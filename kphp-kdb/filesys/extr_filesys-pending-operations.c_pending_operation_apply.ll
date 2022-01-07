; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_apply.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_operation = type { i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@po_olddir = common dso_local global i8* null, align 8
@po_newdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"pending_operation_apply (P.type == pot_null)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pending_operation_apply(%struct.pending_operation* %0) #0 {
  %2 = alloca %struct.pending_operation*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pending_operation* %0, %struct.pending_operation** %2, align 8
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %13, align 16
  %14 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %14, align 16
  %15 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %16 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = load i8*, i8** @po_olddir, align 8
  %22 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %23 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @snprintf(i8* %9, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %24)
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = icmp slt i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %32 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i32, i32* @PATH_MAX, align 4
  %37 = load i8*, i8** @po_newdir, align 8
  %38 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %39 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @snprintf(i8* %12, i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %40)
  %42 = load i32, i32* @PATH_MAX, align 4
  %43 = icmp slt i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  br label %46

46:                                               ; preds = %35, %30
  %47 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %48 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %89 [
    i32 131, label %50
    i32 132, label %53
    i32 128, label %64
    i32 129, label %74
    i32 130, label %81
    i32 133, label %84
  ]

50:                                               ; preds = %46
  %51 = call i32 @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 @exit(i32 1) #4
  unreachable

53:                                               ; preds = %46
  %54 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %55 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mkdir(i8* %12, i32 %57)
  %59 = call i32 @PO_ASSERT(i32 %58)
  %60 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %61 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %60, i32 0, i32 3
  %62 = call i32 @lcopy_attrs(i8* %12, %struct.TYPE_2__* %61)
  %63 = call i32 @PO_ASSERT(i32 %62)
  br label %89

64:                                               ; preds = %46
  %65 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %66 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @symlink(i8* %67, i8* %12)
  %69 = call i32 @PO_ASSERT(i32 %68)
  %70 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %71 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %70, i32 0, i32 3
  %72 = call i32 @lcopy_attrs(i8* %12, %struct.TYPE_2__* %71)
  %73 = call i32 @PO_ASSERT(i32 %72)
  br label %89

74:                                               ; preds = %46
  %75 = call i32 @rename(i8* %9, i8* %12)
  %76 = call i32 @PO_ASSERT(i32 %75)
  %77 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %78 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %77, i32 0, i32 3
  %79 = call i32 @lcopy_attrs(i8* %12, %struct.TYPE_2__* %78)
  %80 = call i32 @PO_ASSERT(i32 %79)
  br label %89

81:                                               ; preds = %46
  %82 = call i32 @delete_file(i8* %12)
  %83 = call i32 @PO_ASSERT(i32 %82)
  br label %89

84:                                               ; preds = %46
  %85 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %86 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %85, i32 0, i32 3
  %87 = call i32 @lcopy_attrs(i8* %12, %struct.TYPE_2__* %86)
  %88 = call i32 @PO_ASSERT(i32 %87)
  br label %89

89:                                               ; preds = %46, %84, %81, %74, %64, %53
  %90 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %90)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @kprintf(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @PO_ASSERT(i32) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i32 @lcopy_attrs(i8*, %struct.TYPE_2__*) #2

declare dso_local i32 @symlink(i8*, i8*) #2

declare dso_local i32 @rename(i8*, i8*) #2

declare dso_local i32 @delete_file(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
