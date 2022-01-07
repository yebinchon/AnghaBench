; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_drbd_pr_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_drbd_pr_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%union.drbd_state = type { i32 }

@CS_DC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"aftr_isp( %d -> %d ) \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"peer_isp( %d -> %d ) \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"user_isp( %d -> %d ) \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, i32, i32, i32)* @drbd_pr_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_pr_state_change(%struct.drbd_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.drbd_state, align 4
  %6 = alloca %union.drbd_state, align 4
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [300 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  %12 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @CS_DC_MASK, align 4
  %17 = xor i32 %15, %16
  %18 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @print_state_change(i8* %14, i32 %19, i32 %21, i32 %17)
  %23 = load i8*, i8** %10, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %10, align 8
  %26 = bitcast %union.drbd_state* %6 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = bitcast %union.drbd_state* %5 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  %32 = load i8*, i8** %10, align 8
  %33 = bitcast %union.drbd_state* %5 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %union.drbd_state* %6 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i8*, i8** %10, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %31, %4
  %42 = bitcast %union.drbd_state* %6 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %union.drbd_state* %5 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = bitcast %union.drbd_state* %5 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = bitcast %union.drbd_state* %6 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %52)
  %54 = load i8*, i8** %10, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %10, align 8
  br label %57

57:                                               ; preds = %47, %41
  %58 = bitcast %union.drbd_state* %6 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = bitcast %union.drbd_state* %5 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load i8*, i8** %10, align 8
  %65 = bitcast %union.drbd_state* %5 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = bitcast %union.drbd_state* %6 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %68)
  %70 = load i8*, i8** %10, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %10, align 8
  br label %73

73:                                               ; preds = %63, %57
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %76 = icmp ne i8* %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %79 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %80 = call i32 @drbd_info(%struct.drbd_device* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %77, %73
  ret void
}

declare dso_local i32 @print_state_change(i8*, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @drbd_info(%struct.drbd_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
