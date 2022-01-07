; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-reach.c_print_sorted_commit_ids.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-reach.c_print_sorted_commit_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list*)* @print_sorted_commit_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sorted_commit_ids(%struct.commit_list* %0) #0 {
  %2 = alloca %struct.commit_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.string_list, align 8
  store %struct.commit_list* %0, %struct.commit_list** %2, align 8
  %5 = bitcast %struct.string_list* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %8 = icmp ne %struct.commit_list* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %11 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @oid_to_hex(i32* %14)
  %16 = call i32 @string_list_append(%struct.string_list* %4, i32 %15)
  %17 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %18 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %17, i32 0, i32 0
  %19 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  store %struct.commit_list* %19, %struct.commit_list** %2, align 8
  br label %6

20:                                               ; preds = %6
  %21 = call i32 @string_list_sort(%struct.string_list* %4)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %36, %20
  %23 = load i32, i32* %3, align 4
  %24 = getelementptr inbounds %struct.string_list, %struct.string_list* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.string_list, %struct.string_list* %4, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %22

39:                                               ; preds = %22
  %40 = call i32 @string_list_clear(%struct.string_list* %4, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @string_list_sort(%struct.string_list*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
