; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pf_in.c_skip_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pf_in.c_skip_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prefix_bits = type { i32, i32, i32, i32 }

@prefix_codes = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.prefix_bits*)* @skip_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_prefix(i8* %0, %struct.prefix_bits* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.prefix_bits*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.prefix_bits* %1, %struct.prefix_bits** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %6, align 8
  %8 = load %struct.prefix_bits*, %struct.prefix_bits** %4, align 8
  %9 = getelementptr inbounds %struct.prefix_bits, %struct.prefix_bits* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.prefix_bits*, %struct.prefix_bits** %4, align 8
  %11 = getelementptr inbounds %struct.prefix_bits, %struct.prefix_bits* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.prefix_bits*, %struct.prefix_bits** %4, align 8
  %13 = getelementptr inbounds %struct.prefix_bits, %struct.prefix_bits* %12, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = load %struct.prefix_bits*, %struct.prefix_bits** %4, align 8
  %15 = getelementptr inbounds %struct.prefix_bits, %struct.prefix_bits* %14, i32 0, i32 3
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %68, %2
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %72, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** @prefix_codes, align 8
  %20 = call i32 @ARRAY_SIZE(i8* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8*, i8** @prefix_codes, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %22
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 102
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.prefix_bits*, %struct.prefix_bits** %4, align 8
  %40 = getelementptr inbounds %struct.prefix_bits, %struct.prefix_bits* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 248
  %46 = icmp eq i32 %45, 72
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.prefix_bits*, %struct.prefix_bits** %4, align 8
  %49 = getelementptr inbounds %struct.prefix_bits, %struct.prefix_bits* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 244
  %55 = icmp eq i32 %54, 68
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.prefix_bits*, %struct.prefix_bits** %4, align 8
  %58 = getelementptr inbounds %struct.prefix_bits, %struct.prefix_bits* %57, i32 0, i32 2
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 240
  %64 = icmp eq i32 %63, 64
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.prefix_bits*, %struct.prefix_bits** %4, align 8
  %67 = getelementptr inbounds %struct.prefix_bits, %struct.prefix_bits* %66, i32 0, i32 3
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  br label %16

71:                                               ; preds = %22
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %17

75:                                               ; preds = %17
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  ret i32 %81
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
