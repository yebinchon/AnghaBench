; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_rerere_forget_one_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_rerere_forget_one_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.string_list = type { i32 }
%struct.rerere_id = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.string_list_item = type { %struct.rerere_id* }
%struct.TYPE_8__ = type { %struct.rerere_id*, i32, i32* }
%struct.TYPE_9__ = type { %struct.rerere_id*, i32, i32* }

@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not parse conflict hunks in '%s'\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"thisimage\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to update conflicted state in '%s'\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"no remembered resolution for '%s'\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"postimage\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"cannot unlink '%s'\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"preimage\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Updated preimage for '%s'\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Forgot resolution for '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, %struct.string_list*)* @rerere_forget_one_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rerere_forget_one_path(%struct.index_state* %0, i8* %1, %struct.string_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rerere_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.string_list_item*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.string_list* %2, %struct.string_list** %7, align 8
  %18 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load %struct.index_state*, %struct.index_state** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @handle_cache(%struct.index_state* %22, i8* %23, i8* %21, i8* null)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @error(i8* %28, i8* %29)
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %150

31:                                               ; preds = %3
  %32 = call %struct.rerere_id* @new_rerere_id(i8* %21)
  store %struct.rerere_id* %32, %struct.rerere_id** %9, align 8
  %33 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %34 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %87, %31
  %36 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %37 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %40 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %38, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %35
  %46 = bitcast %struct.TYPE_8__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %46, i8 0, i64 24, i1 false)
  %47 = bitcast %struct.TYPE_9__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %47, i8 0, i64 24, i1 false)
  %48 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %49 = call i32 @has_rerere_resolution(%struct.rerere_id* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %87

52:                                               ; preds = %45
  %53 = load %struct.index_state*, %struct.index_state** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %56 = call i8* @rerere_path(%struct.rerere_id* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @handle_cache(%struct.index_state* %53, i8* %54, i8* %21, i8* %56)
  %58 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %59 = call i8* @rerere_path(%struct.rerere_id* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i64 @read_mmfile(%struct.TYPE_8__* %15, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %64 = load %struct.rerere_id*, %struct.rerere_id** %63, align 8
  %65 = call i32 @free(%struct.rerere_id* %64)
  %66 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @error(i8* %66, i8* %67)
  br label %147

69:                                               ; preds = %52
  %70 = load %struct.index_state*, %struct.index_state** %5, align 8
  %71 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @try_merge(%struct.index_state* %70, %struct.rerere_id* %71, i8* %72, %struct.TYPE_8__* %15, %struct.TYPE_9__* %16)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %17, align 4
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %78 = load %struct.rerere_id*, %struct.rerere_id** %77, align 8
  %79 = call i32 @free(%struct.rerere_id* %78)
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %81 = load %struct.rerere_id*, %struct.rerere_id** %80, align 8
  %82 = call i32 @free(%struct.rerere_id* %81)
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %92

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86, %51
  %88 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %89 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  br label %35

92:                                               ; preds = %85, %35
  %93 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %94 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %99 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sle i64 %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @error(i8* %103, i8* %104)
  br label %147

106:                                              ; preds = %92
  %107 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %108 = call i8* @rerere_path(%struct.rerere_id* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = call i64 @unlink(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load i64, i64* @errno, align 8
  %114 = load i64, i64* @ENOENT, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @error(i8* %117, i8* %118)
  br label %124

120:                                              ; preds = %112
  %121 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @error_errno(i8* %121, i8* %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %147

125:                                              ; preds = %106
  %126 = load %struct.index_state*, %struct.index_state** %5, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %129 = call i8* @rerere_path(%struct.rerere_id* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %130 = call i32 @handle_cache(%struct.index_state* %126, i8* %127, i8* %21, i8* %129)
  %131 = load i32, i32* @stderr, align 4
  %132 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @fprintf_ln(i32 %131, i8* %132, i8* %133)
  %135 = load %struct.string_list*, %struct.string_list** %7, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %135, i8* %136)
  store %struct.string_list_item* %137, %struct.string_list_item** %13, align 8
  %138 = load %struct.string_list_item*, %struct.string_list_item** %13, align 8
  %139 = call i32 @free_rerere_id(%struct.string_list_item* %138)
  %140 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %141 = load %struct.string_list_item*, %struct.string_list_item** %13, align 8
  %142 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %141, i32 0, i32 0
  store %struct.rerere_id* %140, %struct.rerere_id** %142, align 8
  %143 = load i32, i32* @stderr, align 4
  %144 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @fprintf(i32 %143, i8* %144, i8* %145)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %150

147:                                              ; preds = %124, %102, %62
  %148 = load %struct.rerere_id*, %struct.rerere_id** %9, align 8
  %149 = call i32 @free(%struct.rerere_id* %148)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %150

150:                                              ; preds = %147, %125, %27
  %151 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @handle_cache(%struct.index_state*, i8*, i8*, i8*) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local %struct.rerere_id* @new_rerere_id(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @has_rerere_resolution(%struct.rerere_id*) #2

declare dso_local i8* @rerere_path(%struct.rerere_id*, i8*) #2

declare dso_local i64 @read_mmfile(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @free(%struct.rerere_id*) #2

declare dso_local i32 @try_merge(%struct.index_state*, %struct.rerere_id*, i8*, %struct.TYPE_8__*, %struct.TYPE_9__*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @error_errno(i8*, i8*) #2

declare dso_local i32 @fprintf_ln(i32, i8*, i8*) #2

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i8*) #2

declare dso_local i32 @free_rerere_id(%struct.string_list_item*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
