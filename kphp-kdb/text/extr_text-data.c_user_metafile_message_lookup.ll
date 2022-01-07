; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_user_metafile_message_lookup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_user_metafile_message_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_message = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.file_user_header = type { i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"user_metafile_message_lookup (%p, %d, %d, %p [%d])\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file_message* @user_metafile_message_lookup(i8* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca %struct.file_message*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.file_user_header*, align 8
  %11 = alloca %struct.file_message*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.file_user_header*
  store %struct.file_user_header* %14, %struct.file_user_header** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23, i32 %24, %struct.TYPE_4__* %25, i32 %28)
  br label %30

30:                                               ; preds = %20, %17
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %42 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %48 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %36
  store %struct.file_message* null, %struct.file_message** %5, align 8
  br label %120

52:                                               ; preds = %45
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %55 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %62 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %59, i64 %65
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %52
  store %struct.file_message* null, %struct.file_message** %5, align 8
  br label %120

75:                                               ; preds = %52
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %80 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %75
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i32*, i32** %12, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.file_user_header*, %struct.file_user_header** %10, align 8
  %96 = getelementptr inbounds %struct.file_user_header, %struct.file_user_header* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = icmp sle i32 %94, %97
  br label %99

99:                                               ; preds = %91, %83, %75
  %100 = phi i1 [ false, %83 ], [ false, %75 ], [ %98, %91 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i8*, i8** %6, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = bitcast i8* %108 to %struct.file_message*
  store %struct.file_message* %109, %struct.file_message** %11, align 8
  %110 = load %struct.file_message*, %struct.file_message** %11, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  %118 = call i32 @check_message_size(%struct.file_message* %110, i32 %117, i32 0)
  %119 = load %struct.file_message*, %struct.file_message** %11, align 8
  store %struct.file_message* %119, %struct.file_message** %5, align 8
  br label %120

120:                                              ; preds = %99, %74, %51
  %121 = load %struct.file_message*, %struct.file_message** %5, align 8
  ret %struct.file_message* %121
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_message_size(%struct.file_message*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
