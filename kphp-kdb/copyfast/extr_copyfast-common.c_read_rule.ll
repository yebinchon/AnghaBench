; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-common.c_read_rule.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-common.c_read_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netrule = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%u.%u.%u.%u/%u /%u\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%u.%u.%u.%u/%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_rule(i8* %0, %struct.netrule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netrule*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.netrule* %1, %struct.netrule** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11)
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 2, i32* %12, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9, i32* %10)
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %12, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %84

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp uge i32 %27, 256
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp uge i32 %30, 256
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp uge i32 %33, 256
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp uge i32 %36, 256
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp uge i32 %39, 32
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp uge i32 %45, 32
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %38, %35, %32, %29, %26
  store i32 0, i32* %3, align 4
  br label %85

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.netrule*, %struct.netrule** %5, align 8
  %51 = getelementptr inbounds %struct.netrule, %struct.netrule* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 24
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 16
  %56 = add i32 %53, %55
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, 8
  %59 = add i32 %56, %58
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %59, %60
  %62 = load %struct.netrule*, %struct.netrule** %5, align 8
  %63 = getelementptr inbounds %struct.netrule, %struct.netrule* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sub i32 32, %64
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.netrule*, %struct.netrule** %5, align 8
  %69 = getelementptr inbounds %struct.netrule, %struct.netrule* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub i32 32, %70
  %72 = shl i32 1, %71
  %73 = sub nsw i32 %72, 1
  %74 = load %struct.netrule*, %struct.netrule** %5, align 8
  %75 = getelementptr inbounds %struct.netrule, %struct.netrule* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub i32 32, %76
  %78 = load %struct.netrule*, %struct.netrule** %5, align 8
  %79 = getelementptr inbounds %struct.netrule, %struct.netrule* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub i32 32, %80
  %82 = load %struct.netrule*, %struct.netrule** %5, align 8
  %83 = getelementptr inbounds %struct.netrule, %struct.netrule* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  store i32 1, i32* %3, align 4
  br label %85

84:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %48, %47
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
