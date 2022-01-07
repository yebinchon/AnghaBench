; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_mktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_mktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.tree_content = type { i32, %struct.tree_entry** }
%struct.tree_entry = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.strbuf = type { i32 }

@tecmp0 = common dso_local global i32 0, align 4
@tecmp1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%o %s%c\00", align 1
@NO_DELTA = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_content*, i32, %struct.strbuf*)* @mktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mktree(%struct.tree_content* %0, i32 %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.tree_content*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tree_entry*, align 8
  store %struct.tree_content* %0, %struct.tree_content** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %14 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %13, i32 0, i32 1
  %15 = load %struct.tree_entry**, %struct.tree_entry*** %14, align 8
  %16 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %17 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @tecmp0, align 4
  %20 = call i32 @QSORT(%struct.tree_entry** %15, i32 %18, i32 %19)
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %23 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %22, i32 0, i32 1
  %24 = load %struct.tree_entry**, %struct.tree_entry*** %23, align 8
  %25 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %26 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @tecmp1, align 4
  %29 = call i32 @QSORT(%struct.tree_entry** %24, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %12
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %69, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %34 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %31
  %38 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %39 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %38, i32 0, i32 1
  %40 = load %struct.tree_entry**, %struct.tree_entry*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %40, i64 %42
  %44 = load %struct.tree_entry*, %struct.tree_entry** %43, align 8
  %45 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %37
  %54 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %55 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %54, i32 0, i32 1
  %56 = load %struct.tree_entry**, %struct.tree_entry*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %56, i64 %58
  %60 = load %struct.tree_entry*, %struct.tree_entry** %59, align 8
  %61 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 34
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %53, %37
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %31

72:                                               ; preds = %31
  %73 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %74 = call i32 @strbuf_reset(%struct.strbuf* %73)
  %75 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @strbuf_grow(%struct.strbuf* %75, i64 %76)
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %135, %72
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %81 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %138

84:                                               ; preds = %78
  %85 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %86 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %85, i32 0, i32 1
  %87 = load %struct.tree_entry**, %struct.tree_entry*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %87, i64 %89
  %91 = load %struct.tree_entry*, %struct.tree_entry** %90, align 8
  store %struct.tree_entry* %91, %struct.tree_entry** %9, align 8
  %92 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %93 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %84
  br label %135

102:                                              ; preds = %84
  %103 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %104 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %105 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @NO_DELTA, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %116 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @strbuf_addf(%struct.strbuf* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %119, i8 signext 0)
  %121 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %122 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %123 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @strbuf_add(%struct.strbuf* %121, i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %102, %101
  %136 = load i32, i32* %8, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %78

138:                                              ; preds = %78
  ret void
}

declare dso_local i32 @QSORT(%struct.tree_entry**, i32, i32) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
