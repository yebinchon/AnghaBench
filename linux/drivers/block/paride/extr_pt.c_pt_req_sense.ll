; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_req_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_req_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { i32, i32 }

@ATAPI_REQ_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Request sense\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: Sense key: %x, ASC: %x, ASQ: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_unit*, i32)* @pt_req_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_req_sense(%struct.pt_unit* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_unit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [12 x i8], align 1
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.pt_unit* %0, %struct.pt_unit** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %9 = load i32, i32* @ATAPI_REQ_SENSE, align 4
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %8, align 1
  %11 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 0, i8* %11, align 1
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 16, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  %22 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %23 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %24 = call i32 @pt_command(%struct.pt_unit* %22, i8* %23, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %7, align 4
  %25 = call i32 @mdelay(i32 1)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %31 = call i32 @pt_completion(%struct.pt_unit* %29, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %34 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %73, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %42 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %45 = load i8, i8* %44, align 2
  %46 = sext i8 %45 to i32
  %47 = and i32 %46, 15
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 12
  %50 = load i8, i8* %49, align 4
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 13
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8 signext %48, i8 signext %50, i8 signext %52)
  br label %54

54:                                               ; preds = %40, %37
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %56 = load i8, i8* %55, align 2
  %57 = sext i8 %56 to i32
  %58 = and i32 %57, 15
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 12
  %60 = load i8, i8* %59, align 4
  %61 = sext i8 %60 to i32
  %62 = and i32 %61, 255
  %63 = shl i32 %62, 8
  %64 = or i32 %58, %63
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 13
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = and i32 %67, 255
  %69 = shl i32 %68, 16
  %70 = or i32 %64, %69
  %71 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %72 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %54, %32
  ret void
}

declare dso_local i32 @pt_command(%struct.pt_unit*, i8*, i32, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pt_completion(%struct.pt_unit*, i8*, i8*) #1

declare dso_local i32 @printk(i8*, i32, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
