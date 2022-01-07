; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_show_push_unqualified_ref_name_error.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_show_push_unqualified_ref_name_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [399 x i8] c"The destination you provided is not a full refname (i.e.,\0Astarting with \22refs/\22). We tried to guess what you meant by:\0A\0A- Looking for a ref that matches '%s' on the remote side.\0A- Checking if the <src> being pushed ('%s')\0A  is a ref in \22refs/{heads,tags}/\22. If so we add a corresponding\0A  refs/{heads,tags}/ prefix on the remote side.\0A\0ANeither worked, so we gave up. You must fully qualify the ref.\00", align 1
@advice_push_unqualified_ref_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"'%s' is not a valid object, match_explicit_lhs() should catch this!\00", align 1
@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [120 x i8] c"The <src> part of the refspec is a commit object.\0ADid you mean to create a new branch by pushing to\0A'%s:refs/heads/%s'?\00", align 1
@OBJ_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [113 x i8] c"The <src> part of the refspec is a tag object.\0ADid you mean to create a new tag by pushing to\0A'%s:refs/tags/%s'?\00", align 1
@OBJ_TREE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [112 x i8] c"The <src> part of the refspec is a tree object.\0ADid you mean to tag a new tree by pushing to\0A'%s:refs/tags/%s'?\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [112 x i8] c"The <src> part of the refspec is a blob object.\0ADid you mean to tag a new blob by pushing to\0A'%s:refs/tags/%s'?\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"'%s' should be commit/tag/tree/blob, is '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @show_push_unqualified_ref_name_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_push_unqualified_ref_name_error(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @_(i8* getelementptr inbounds ([399 x i8], [399 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @error(i32 %7, i8* %8, i8* %9)
  %11 = load i32, i32* @advice_push_unqualified_ref_name, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %66

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @get_oid(i8* %15, %struct.object_id* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i8*, i8*, ...) @BUG(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* @the_repository, align 4
  %23 = call i32 @oid_object_info(i32 %22, %struct.object_id* %5, i32* null)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @OBJ_COMMIT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = call i32 @_(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @advise(i32 %28, i8* %29, i8* %30)
  br label %66

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @OBJ_TAG, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = call i32 @_(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @advise(i32 %37, i8* %38, i8* %39)
  br label %65

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @OBJ_TREE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = call i32 @_(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @advise(i32 %46, i8* %47, i8* %48)
  br label %64

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @OBJ_BLOB, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = call i32 @_(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @advise(i32 %55, i8* %56, i8* %57)
  br label %63

59:                                               ; preds = %50
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i8*, i8*, ...) @BUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %64, %36
  br label %66

66:                                               ; preds = %13, %65, %27
  ret void
}

declare dso_local i32 @error(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @BUG(i8*, i8*, ...) #1

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local i32 @advise(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
