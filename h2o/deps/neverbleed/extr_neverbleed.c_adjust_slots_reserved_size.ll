; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_adjust_slots_reserved_size.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_adjust_slots_reserved_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.key_slots = type { i64, i64, i32* }

@default_reserved_size = common dso_local global i64 0, align 8
@daemon_vars = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid type adjusting reserved\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.key_slots*)* @adjust_slots_reserved_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_slots_reserved_size(i32 %0, %struct.key_slots* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key_slots*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.key_slots* %1, %struct.key_slots** %4, align 8
  %7 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %8 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %13 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %16 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %109

19:                                               ; preds = %11, %2
  %20 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %21 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %19
  %25 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %26 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = uitofp i64 %27 to double
  %29 = fmul double %28, 5.000000e-01
  %30 = fptoui double %29 to i64
  %31 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %32 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  %35 = add i64 %34, 64
  %36 = sub i64 %35, 1
  %37 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %38 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = uitofp i64 %39 to double
  %41 = fmul double %40, 5.000000e-01
  %42 = fptoui double %41 to i64
  %43 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %44 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  %47 = add i64 %46, 64
  %48 = sub i64 %47, 1
  %49 = urem i64 %48, 64
  %50 = sub i64 %36, %49
  br label %53

51:                                               ; preds = %19
  %52 = load i64, i64* @default_reserved_size, align 8
  br label %53

53:                                               ; preds = %51, %24
  %54 = phi i64 [ %50, %24 ], [ %52, %51 ]
  store i64 %54, i64* %5, align 8
  %55 = load i32, i32* %3, align 4
  switch i32 %55, label %76 [
    i32 128, label %56
    i32 129, label %66
  ]

56:                                               ; preds = %53
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @daemon_vars, i32 0, i32 0, i32 1), align 8
  %58 = load i64, i64* %5, align 8
  %59 = mul i64 4, %58
  %60 = call i8* @realloc(i32* %57, i64 %59)
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @daemon_vars, i32 0, i32 0, i32 1), align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 @dief(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %56
  br label %78

66:                                               ; preds = %53
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @daemon_vars, i32 0, i32 0, i32 0), align 8
  %68 = load i64, i64* %5, align 8
  %69 = mul i64 4, %68
  %70 = call i8* @realloc(i32* %67, i64 %69)
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @daemon_vars, i32 0, i32 0, i32 0), align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i32 @dief(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %66
  br label %78

76:                                               ; preds = %53
  %77 = call i32 @dief(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %75, %65
  %79 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %80 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i64 @BITBYTES(i64 %82)
  %84 = call i8* @realloc(i32* %81, i64 %83)
  %85 = bitcast i8* %84 to i32*
  store i32* %85, i32** %6, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = call i32 @dief(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %78
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %92 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @BITBYTES(i64 %93)
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i64, i64* %5, align 8
  %97 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %98 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %96, %99
  %101 = call i64 @BITBYTES(i64 %100)
  %102 = call i32 @memset(i32* %95, i32 255, i64 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %105 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %104, i32 0, i32 2
  store i32* %103, i32** %105, align 8
  %106 = load i64, i64* %5, align 8
  %107 = load %struct.key_slots*, %struct.key_slots** %4, align 8
  %108 = getelementptr inbounds %struct.key_slots, %struct.key_slots* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %89, %11
  ret void
}

declare dso_local i8* @realloc(i32*, i64) #1

declare dso_local i32 @dief(i8*) #1

declare dso_local i64 @BITBYTES(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
