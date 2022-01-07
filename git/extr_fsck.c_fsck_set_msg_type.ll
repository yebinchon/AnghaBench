; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_set_msg_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_set_msg_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.fsck_options = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"Unhandled message id: %s\00", align 1
@FSCK_ERROR = common dso_local global i32 0, align 4
@msg_id_info = common dso_local global %struct.TYPE_2__* null, align 8
@FSCK_FATAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot demote %s to %s\00", align 1
@FSCK_MSG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsck_set_msg_type(%struct.fsck_options* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.fsck_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.fsck_options* %0, %struct.fsck_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @parse_msg_id(i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @parse_msg_type(i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @FSCK_ERROR, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msg_id_info, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FSCK_FATAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %24, %18
  %38 = load %struct.fsck_options*, %struct.fsck_options** %4, align 8
  %39 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %65, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* @FSCK_MSG_MAX, align 4
  %45 = call i32 @ALLOC_ARRAY(i32* %43, i32 %44)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %58, %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @FSCK_MSG_MAX, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.fsck_options*, %struct.fsck_options** %4, align 8
  %53 = call i32 @fsck_msg_type(i32 %51, %struct.fsck_options* %52)
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load i32*, i32** %10, align 8
  %63 = load %struct.fsck_options*, %struct.fsck_options** %4, align 8
  %64 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  br label %65

65:                                               ; preds = %61, %37
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.fsck_options*, %struct.fsck_options** %4, align 8
  %68 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  ret void
}

declare dso_local i32 @parse_msg_id(i8*) #1

declare dso_local i32 @die(i8*, i8*, ...) #1

declare dso_local i32 @parse_msg_type(i8*) #1

declare dso_local i32 @ALLOC_ARRAY(i32*, i32) #1

declare dso_local i32 @fsck_msg_type(i32, %struct.fsck_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
