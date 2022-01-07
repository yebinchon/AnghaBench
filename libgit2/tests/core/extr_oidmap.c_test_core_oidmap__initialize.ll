; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_oidmap.c_test_core_oidmap__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_oidmap.c_test_core_oidmap__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@test_oids = common dso_local global %struct.TYPE_5__* null, align 8
@GIT_OID_RAWSZ = common dso_local global i32 0, align 4
@g_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_oidmap__initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %134, %0
  %6 = load i32, i32* %1, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %137

10:                                               ; preds = %5
  %11 = load i32, i32* %1, align 4
  %12 = sdiv i32 %11, 8
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %14, 8
  %16 = sub nsw i32 %13, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %87, %10
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %26 = sdiv i32 %25, 4
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %90

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = trunc i32 %29 to i8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %2, align 4
  %39 = mul nsw i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 %30, i8* %41, align 1
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 8
  %44 = trunc i32 %43 to i8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %2, align 4
  %53 = mul nsw i32 %52, 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  store i8 %44, i8* %56, align 1
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 %57, 16
  %59 = trunc i32 %58 to i8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %2, align 4
  %68 = mul nsw i32 %67, 4
  %69 = add nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  store i8 %59, i8* %71, align 1
  %72 = load i32, i32* %4, align 4
  %73 = ashr i32 %72, 24
  %74 = trunc i32 %73 to i8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %2, align 4
  %83 = mul nsw i32 %82, 4
  %84 = add nsw i32 %83, 3
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  store i8 %74, i8* %86, align 1
  br label %87

87:                                               ; preds = %28
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %23

90:                                               ; preds = %23
  %91 = load i32, i32* %1, align 4
  %92 = trunc i32 %91 to i8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %94 = load i32, i32* %1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 8
  store i8 %92, i8* %100, align 1
  %101 = load i32, i32* %1, align 4
  %102 = ashr i32 %101, 8
  %103 = trunc i32 %102 to i8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 9
  store i8 %103, i8* %111, align 1
  %112 = load i32, i32* %1, align 4
  %113 = ashr i32 %112, 16
  %114 = trunc i32 %113 to i8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 10
  store i8 %114, i8* %122, align 1
  %123 = load i32, i32* %1, align 4
  %124 = ashr i32 %123, 24
  %125 = trunc i32 %124 to i8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 11
  store i8 %125, i8* %133, align 1
  br label %134

134:                                              ; preds = %90
  %135 = load i32, i32* %1, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %1, align 4
  br label %5

137:                                              ; preds = %5
  %138 = call i32 @git_oidmap_new(i32* @g_map)
  %139 = call i32 @cl_git_pass(i32 %138)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oidmap_new(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
