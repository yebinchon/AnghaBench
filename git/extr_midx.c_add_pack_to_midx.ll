; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_add_pack_to_midx.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_add_pack_to_midx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_list = type { i32, %struct.TYPE_2__*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to add packfile '%s'\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to open pack-index '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i8*)* @add_pack_to_midx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pack_to_midx(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pack_list*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.pack_list*
  store %struct.pack_list* %11, %struct.pack_list** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @ends_with(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %152

15:                                               ; preds = %4
  %16 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %17 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %20 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = call i32 @display_progress(i32 %18, i32 %22)
  %24 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %25 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %30 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @midx_contains_pack(i64 %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %152

36:                                               ; preds = %28, %15
  %37 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %38 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %41 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  %44 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %45 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ALLOC_GROW(%struct.TYPE_2__* %39, i32 %43, i32 %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @add_packed_git(i8* %48, i64 %49, i32 0)
  %51 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %52 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %55 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32 %50, i32* %59, align 4
  %60 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %61 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %64 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %36
  %72 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @warning(i32 %72, i8* %73)
  br label %152

75:                                               ; preds = %36
  %76 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %77 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %80 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @open_pack_index(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %114

88:                                               ; preds = %75
  %89 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @warning(i32 %89, i8* %90)
  %92 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %93 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %96 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @close_pack(i32 %101)
  %103 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %104 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %107 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @FREE_AND_NULL(i32 %112)
  br label %152

114:                                              ; preds = %75
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @xstrdup(i8* %115)
  %117 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %118 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %121 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  store i32 %116, i32* %125, align 8
  %126 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %127 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %131 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %134 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i64 %129, i64* %138, align 8
  %139 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %140 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %143 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  store i64 0, i64* %147, align 8
  %148 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  %149 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %35, %71, %88, %114, %4
  ret void
}

declare dso_local i64 @ends_with(i8*, i8*) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i64 @midx_contains_pack(i64, i8*) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @add_packed_git(i8*, i64, i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @open_pack_index(i32) #1

declare dso_local i32 @close_pack(i32) #1

declare dso_local i32 @FREE_AND_NULL(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
