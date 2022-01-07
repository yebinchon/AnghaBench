; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_puff.c_puff.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_puff.c_puff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i8*, i8*, i32, i64, i64, i8*, i32*, i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puff(i32* %0, i8** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.state, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 8
  store i32* %13, i32** %14, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 7
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 1
  store i8* null, i8** %18, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 6
  store i32* %19, i32** %20, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 5
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 0
  store i8* null, i8** %24, align 8
  %25 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @setjmp(i32 %28) #3
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 2, i32* %12, align 4
  br label %66

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %61, %32
  %34 = call i32 @bits(%struct.state* %9, i32 1)
  store i32 %34, i32* %10, align 4
  %35 = call i32 @bits(%struct.state* %9, i32 2)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @stored(%struct.state* %9)
  br label %55

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @fixed(%struct.state* %9)
  br label %53

45:                                               ; preds = %40
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @dynamic(%struct.state* %9)
  br label %51

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ -1, %50 ]
  br label %53

53:                                               ; preds = %51, %43
  %54 = phi i32 [ %44, %43 ], [ %52, %51 ]
  br label %55

55:                                               ; preds = %53, %38
  %56 = phi i32 [ %39, %38 ], [ %54, %53 ]
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %65

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %33, label %65

65:                                               ; preds = %61, %59
  br label %66

66:                                               ; preds = %65, %31
  %67 = load i32, i32* %12, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i8**, i8*** %6, align 8
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %8, align 8
  store i8* %74, i8** %75, align 8
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i32, i32* %12, align 4
  ret i32 %77
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @bits(%struct.state*, i32) #2

declare dso_local i32 @stored(%struct.state*) #2

declare dso_local i32 @fixed(%struct.state*) #2

declare dso_local i32 @dynamic(%struct.state*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
