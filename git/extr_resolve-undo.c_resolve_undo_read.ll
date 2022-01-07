; ModuleID = '/home/carl/AnghaBench/git/extr_resolve-undo.c_resolve_undo_read.c'
source_filename = "/home/carl/AnghaBench/git/extr_resolve-undo.c_resolve_undo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.string_list = type { i32 }
%struct.string_list_item = type { %struct.resolve_undo_info* }
%struct.resolve_undo_info = type { i32*, i32* }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Index records invalid resolve-undo information\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @resolve_undo_read(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.string_list_item*, align 8
  %12 = alloca %struct.resolve_undo_info*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = call i8* @xcalloc(i32 1, i32 4)
  %17 = bitcast i8* %16 to %struct.string_list*
  store %struct.string_list* %17, %struct.string_list** %6, align 8
  %18 = load %struct.string_list*, %struct.string_list** %6, align 8
  %19 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %140, %2
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %141

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %143

32:                                               ; preds = %23
  %33 = load %struct.string_list*, %struct.string_list** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %33, i8* %34)
  store %struct.string_list_item* %35, %struct.string_list_item** %11, align 8
  %36 = load %struct.string_list_item*, %struct.string_list_item** %11, align 8
  %37 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %36, i32 0, i32 0
  %38 = load %struct.resolve_undo_info*, %struct.resolve_undo_info** %37, align 8
  %39 = icmp ne %struct.resolve_undo_info* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = call i8* @xcalloc(i32 1, i32 16)
  %42 = bitcast i8* %41 to %struct.resolve_undo_info*
  %43 = load %struct.string_list_item*, %struct.string_list_item** %11, align 8
  %44 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %43, i32 0, i32 0
  store %struct.resolve_undo_info* %42, %struct.resolve_undo_info** %44, align 8
  br label %45

45:                                               ; preds = %40, %32
  %46 = load %struct.string_list_item*, %struct.string_list_item** %11, align 8
  %47 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %46, i32 0, i32 0
  %48 = load %struct.resolve_undo_info*, %struct.resolve_undo_info** %47, align 8
  store %struct.resolve_undo_info* %48, %struct.resolve_undo_info** %12, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %54, i8** %4, align 8
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %97, %45
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %100

58:                                               ; preds = %55
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @strtoul(i8* %59, i8** %8, i32 8)
  %61 = load %struct.resolve_undo_info*, %struct.resolve_undo_info** %12, align 8
  %62 = getelementptr inbounds %struct.resolve_undo_info, %struct.resolve_undo_info* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %58
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %69, %58
  br label %143

79:                                               ; preds = %73
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8*, i8** %4, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ule i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %143

90:                                               ; preds = %79
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %5, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %55

100:                                              ; preds = %55
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %137, %100
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 3
  br i1 %103, label %104, label %140

104:                                              ; preds = %101
  %105 = load %struct.resolve_undo_info*, %struct.resolve_undo_info** %12, align 8
  %106 = getelementptr inbounds %struct.resolve_undo_info, %struct.resolve_undo_info* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %104
  br label %137

114:                                              ; preds = %104
  %115 = load i64, i64* %5, align 8
  %116 = load i32, i32* %10, align 4
  %117 = zext i32 %116 to i64
  %118 = icmp ult i64 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %143

120:                                              ; preds = %114
  %121 = load %struct.resolve_undo_info*, %struct.resolve_undo_info** %12, align 8
  %122 = getelementptr inbounds %struct.resolve_undo_info, %struct.resolve_undo_info* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 @oidread(i32* %126, i8* %127)
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %5, align 8
  %132 = sub i64 %131, %130
  store i64 %132, i64* %5, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i8*, i8** %4, align 8
  %135 = zext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %4, align 8
  br label %137

137:                                              ; preds = %120, %113
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %101

140:                                              ; preds = %101
  br label %20

141:                                              ; preds = %20
  %142 = load %struct.string_list*, %struct.string_list** %6, align 8
  store %struct.string_list* %142, %struct.string_list** %3, align 8
  br label %147

143:                                              ; preds = %119, %89, %78, %31
  %144 = load %struct.string_list*, %struct.string_list** %6, align 8
  %145 = call i32 @string_list_clear(%struct.string_list* %144, i32 1)
  %146 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* null, %struct.string_list** %3, align 8
  br label %147

147:                                              ; preds = %143, %141
  %148 = load %struct.string_list*, %struct.string_list** %3, align 8
  ret %struct.string_list* %148
}

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @oidread(i32*, i8*) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
