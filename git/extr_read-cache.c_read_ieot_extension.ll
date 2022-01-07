; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_read_ieot_extension.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_read_ieot_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.index_entry_offset_table = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }

@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@CACHE_EXT_INDEXENTRYOFFSETTABLE = common dso_local global i64 0, align 8
@IEOT_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"invalid IEOT version %d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid number of IEOT entries %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.index_entry_offset_table* (i8*, i64, i64)* @read_ieot_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.index_entry_offset_table* @read_ieot_extension(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.index_entry_offset_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.index_entry_offset_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.index_entry_offset_table* null, %struct.index_entry_offset_table** %4, align 8
  br label %121

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %46, %17
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  %25 = sub i64 %24, 8
  %26 = icmp ule i64 %19, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %18
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  %32 = call i8* @get_be32(i8* %31)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = call i64 @CACHE_EXT(i8* %36)
  %38 = load i64, i64* @CACHE_EXT_INDEXENTRYOFFSETTABLE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %45, i8** %8, align 8
  br label %52

46:                                               ; preds = %27
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 8
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %7, align 8
  br label %18

52:                                               ; preds = %40, %18
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store %struct.index_entry_offset_table* null, %struct.index_entry_offset_table** %4, align 8
  br label %121

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = call i8* @get_be32(i8* %57)
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @IEOT_VERSION, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i64, i64* %10, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %65)
  store %struct.index_entry_offset_table* null, %struct.index_entry_offset_table** %4, align 8
  br label %121

67:                                               ; preds = %56
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 8
  store i8* %69, i8** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = sub i64 %70, 8
  %72 = udiv i64 %71, 16
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store %struct.index_entry_offset_table* null, %struct.index_entry_offset_table** %4, align 8
  br label %121

79:                                               ; preds = %67
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = add i64 16, %82
  %84 = trunc i64 %83 to i32
  %85 = call %struct.index_entry_offset_table* @xmalloc(i32 %84)
  store %struct.index_entry_offset_table* %85, %struct.index_entry_offset_table** %11, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %11, align 8
  %88 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %116, %79
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %89
  %94 = load i8*, i8** %8, align 8
  %95 = call i8* @get_be32(i8* %94)
  %96 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %11, align 8
  %97 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i8* %95, i8** %102, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 8
  store i8* %104, i8** %8, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i8* @get_be32(i8* %105)
  %107 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %11, align 8
  %108 = getelementptr inbounds %struct.index_entry_offset_table, %struct.index_entry_offset_table* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i8* %106, i8** %113, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 8
  store i8* %115, i8** %8, align 8
  br label %116

116:                                              ; preds = %93
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %89

119:                                              ; preds = %89
  %120 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %11, align 8
  store %struct.index_entry_offset_table* %120, %struct.index_entry_offset_table** %4, align 8
  br label %121

121:                                              ; preds = %119, %76, %63, %55, %16
  %122 = load %struct.index_entry_offset_table*, %struct.index_entry_offset_table** %4, align 8
  ret %struct.index_entry_offset_table* %122
}

declare dso_local i8* @get_be32(i8*) #1

declare dso_local i64 @CACHE_EXT(i8*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local %struct.index_entry_offset_table* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
