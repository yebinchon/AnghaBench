; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_unmap.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)*, i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)*, i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)*, i32 (%struct.TYPE_8__*, i8*, i64, i32, i32)* }

@extent_hooks_default = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@HUGEPAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32, i8*, i64)* @base_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @base_unmap(i32* %0, %struct.TYPE_8__* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, @extent_hooks_default
  br i1 %13, label %14, label %40

14:                                               ; preds = %5
  %15 = load i8*, i8** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @extent_dalloc_mmap(i8* %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %124

20:                                               ; preds = %14
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @pages_decommit(i8* %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %124

26:                                               ; preds = %20
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @pages_purge_forced(i8* %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %124

32:                                               ; preds = %26
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @pages_purge_lazy(i8* %33, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %124

38:                                               ; preds = %32
  %39 = call i32 (...) @not_reached()
  br label %123

40:                                               ; preds = %5
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @tsdn_null(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32* (...) @tsd_fetch()
  br label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %6, align 8
  %48 = call i32* @tsdn_tsd(i32* %47)
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32* [ %45, %44 ], [ %48, %46 ]
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @pre_reentrancy(i32* %51, i32* null)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i32 (%struct.TYPE_8__*, i8*, i64, i32, i32)*, i32 (%struct.TYPE_8__*, i8*, i64, i32, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_8__*, i8*, i64, i32, i32)* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32 (%struct.TYPE_8__*, i8*, i64, i32, i32)*, i32 (%struct.TYPE_8__*, i8*, i64, i32, i32)** %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 %60(%struct.TYPE_8__* %61, i8* %62, i64 %63, i32 1, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  br label %120

68:                                               ; preds = %57, %49
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)*, i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)*, i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)** %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 %76(%struct.TYPE_8__* %77, i8* %78, i64 %79, i32 0, i64 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %73
  br label %120

85:                                               ; preds = %73, %68
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)*, i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)*, i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)** %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 %93(%struct.TYPE_8__* %94, i8* %95, i64 %96, i32 0, i64 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  br label %120

102:                                              ; preds = %90, %85
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)*, i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)** %104, align 8
  %106 = icmp ne i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)*, i32 (%struct.TYPE_8__*, i8*, i64, i32, i64, i32)** %109, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 %110(%struct.TYPE_8__* %111, i8* %112, i64 %113, i32 0, i64 %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %107
  br label %120

119:                                              ; preds = %107, %102
  br label %120

120:                                              ; preds = %119, %118, %101, %84, %67
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @post_reentrancy(i32* %121)
  br label %123

123:                                              ; preds = %120, %38
  br label %124

124:                                              ; preds = %123, %37, %31, %25, %19
  %125 = call i64 (...) @metadata_thp_madvise()
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load i8*, i8** %9, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = load i64, i64* @HUGEPAGE_MASK, align 8
  %131 = and i64 %129, %130
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* @HUGEPAGE_MASK, align 8
  %136 = and i64 %134, %135
  %137 = icmp eq i64 %136, 0
  br label %138

138:                                              ; preds = %133, %127
  %139 = phi i1 [ false, %127 ], [ %137, %133 ]
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i8*, i8** %9, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i32 @pages_nohuge(i8* %142, i64 %143)
  br label %145

145:                                              ; preds = %138, %124
  ret void
}

declare dso_local i32 @extent_dalloc_mmap(i8*, i64) #1

declare dso_local i32 @pages_decommit(i8*, i64) #1

declare dso_local i32 @pages_purge_forced(i8*, i64) #1

declare dso_local i32 @pages_purge_lazy(i8*, i64) #1

declare dso_local i32 @not_reached(...) #1

declare dso_local i64 @tsdn_null(i32*) #1

declare dso_local i32* @tsd_fetch(...) #1

declare dso_local i32* @tsdn_tsd(i32*) #1

declare dso_local i32 @pre_reentrancy(i32*, i32*) #1

declare dso_local i32 @post_reentrancy(i32*) #1

declare dso_local i64 @metadata_thp_madvise(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pages_nohuge(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
