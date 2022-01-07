; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_msg_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_msg_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fsck_options = type { i32*, i64 }

@FSCK_MSG_MAX = common dso_local global i32 0, align 4
@msg_id_info = common dso_local global %struct.TYPE_2__* null, align 8
@FSCK_WARN = common dso_local global i32 0, align 4
@FSCK_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fsck_options*)* @fsck_msg_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_msg_type(i32 %0, %struct.fsck_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsck_options*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fsck_options* %1, %struct.fsck_options** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp uge i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FSCK_MSG_MAX, align 4
  %11 = icmp ult i32 %9, %10
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ false, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.fsck_options*, %struct.fsck_options** %4, align 8
  %17 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.fsck_options*, %struct.fsck_options** %4, align 8
  %22 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %46

28:                                               ; preds = %12
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msg_id_info, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.fsck_options*, %struct.fsck_options** %4, align 8
  %36 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @FSCK_WARN, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @FSCK_ERROR, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %39, %28
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
