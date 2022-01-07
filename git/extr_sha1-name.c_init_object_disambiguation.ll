; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_init_object_disambiguation.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_init_object_disambiguation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.repository = type { i32 }
%struct.disambiguate_state = type { i8*, i32, %struct.repository*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@MINIMUM_ABBREV = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, %struct.disambiguate_state*)* @init_object_disambiguation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_object_disambiguation(%struct.repository* %0, i8* %1, i32 %2, %struct.disambiguate_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.disambiguate_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.disambiguate_state* %3, %struct.disambiguate_state** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MINIMUM_ABBREV, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %4
  store i32 -1, i32* %5, align 4
  br label %132

23:                                               ; preds = %16
  %24 = load %struct.disambiguate_state*, %struct.disambiguate_state** %9, align 8
  %25 = call i32 @memset(%struct.disambiguate_state* %24, i32 0, i32 32)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %114, %23
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %117

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %11, align 1
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 48
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8, i8* %11, align 1
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %45, 48
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %12, align 1
  br label %83

48:                                               ; preds = %39, %30
  %49 = load i8, i8* %11, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sge i32 %50, 97
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i8, i8* %11, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp sle i32 %54, 102
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8, i8* %11, align 1
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 %58, 97
  %60 = add nsw i32 %59, 10
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %12, align 1
  br label %82

62:                                               ; preds = %52, %48
  %63 = load i8, i8* %11, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp sge i32 %64, 65
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i8, i8* %11, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sle i32 %68, 70
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i8, i8* %11, align 1
  %72 = zext i8 %71 to i32
  %73 = sub nsw i32 %72, 65
  %74 = add nsw i32 %73, 10
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %12, align 1
  %76 = load i8, i8* %11, align 1
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 %77, -32
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %11, align 1
  br label %81

80:                                               ; preds = %66, %62
  store i32 -1, i32* %5, align 4
  br label %132

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %56
  br label %83

83:                                               ; preds = %82, %43
  %84 = load i8, i8* %11, align 1
  %85 = load %struct.disambiguate_state*, %struct.disambiguate_state** %9, align 8
  %86 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %84, i8* %90, align 1
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %83
  %95 = load i8, i8* %12, align 1
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 4
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %12, align 1
  br label %99

99:                                               ; preds = %94, %83
  %100 = load i8, i8* %12, align 1
  %101 = zext i8 %100 to i32
  %102 = load %struct.disambiguate_state*, %struct.disambiguate_state** %9, align 8
  %103 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = ashr i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %111, %101
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %109, align 1
  br label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %26

117:                                              ; preds = %26
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.disambiguate_state*, %struct.disambiguate_state** %9, align 8
  %120 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load %struct.disambiguate_state*, %struct.disambiguate_state** %9, align 8
  %122 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load %struct.repository*, %struct.repository** %6, align 8
  %128 = load %struct.disambiguate_state*, %struct.disambiguate_state** %9, align 8
  %129 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %128, i32 0, i32 2
  store %struct.repository* %127, %struct.repository** %129, align 8
  %130 = load %struct.repository*, %struct.repository** %6, align 8
  %131 = call i32 @prepare_alt_odb(%struct.repository* %130)
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %117, %80, %22
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @memset(%struct.disambiguate_state*, i32, i32) #1

declare dso_local i32 @prepare_alt_odb(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
