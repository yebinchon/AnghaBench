; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_counter_versions_raw.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_counter_versions_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { %struct.counter*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_counter_versions_raw(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.counter*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call %struct.counter* @get_counter_f(i64 %10, i32 0)
  store %struct.counter* %11, %struct.counter** %7, align 8
  br label %12

12:                                               ; preds = %28, %2
  %13 = load %struct.counter*, %struct.counter** %7, align 8
  %14 = icmp ne %struct.counter* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 100000
  %19 = bitcast i8* %18 to i32*
  %20 = icmp ult i32* %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.counter*, %struct.counter** %7, align 8
  %23 = getelementptr inbounds %struct.counter, %struct.counter* %22, i32 0, i32 0
  %24 = load %struct.counter*, %struct.counter** %23, align 8
  %25 = icmp uge %struct.counter* %24, null
  br label %26

26:                                               ; preds = %21, %15, %12
  %27 = phi i1 [ false, %15 ], [ false, %12 ], [ %25, %21 ]
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = load %struct.counter*, %struct.counter** %7, align 8
  %30 = getelementptr inbounds %struct.counter, %struct.counter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %34 = load %struct.counter*, %struct.counter** %7, align 8
  %35 = getelementptr inbounds %struct.counter, %struct.counter* %34, i32 0, i32 0
  %36 = load %struct.counter*, %struct.counter** %35, align 8
  store %struct.counter* %36, %struct.counter** %7, align 8
  br label %12

37:                                               ; preds = %26
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 100000
  %41 = bitcast i8* %40 to i32*
  %42 = icmp ult i32* %38, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %37
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @load_counter(i64 %44, i32 0, i32 1)
  %46 = icmp eq i32 %45, -2
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 -2, i32* %3, align 4
  br label %87

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %6, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call %struct.counter* @get_counter_f(i64 %51, i32 0)
  store %struct.counter* %52, %struct.counter** %7, align 8
  br label %53

53:                                               ; preds = %69, %48
  %54 = load %struct.counter*, %struct.counter** %7, align 8
  %55 = icmp ne %struct.counter* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 100000
  %60 = bitcast i8* %59 to i32*
  %61 = icmp ult i32* %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.counter*, %struct.counter** %7, align 8
  %64 = getelementptr inbounds %struct.counter, %struct.counter* %63, i32 0, i32 0
  %65 = load %struct.counter*, %struct.counter** %64, align 8
  %66 = icmp uge %struct.counter* %65, null
  br label %67

67:                                               ; preds = %62, %56, %53
  %68 = phi i1 [ false, %56 ], [ false, %53 ], [ %66, %62 ]
  br i1 %68, label %69, label %78

69:                                               ; preds = %67
  %70 = load %struct.counter*, %struct.counter** %7, align 8
  %71 = getelementptr inbounds %struct.counter, %struct.counter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  %75 = load %struct.counter*, %struct.counter** %7, align 8
  %76 = getelementptr inbounds %struct.counter, %struct.counter* %75, i32 0, i32 0
  %77 = load %struct.counter*, %struct.counter** %76, align 8
  store %struct.counter* %77, %struct.counter** %7, align 8
  br label %53

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %37
  %80 = load i32*, i32** %6, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = load i8*, i8** %4, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %79, %47
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.counter* @get_counter_f(i64, i32) #1

declare dso_local i32 @load_counter(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
