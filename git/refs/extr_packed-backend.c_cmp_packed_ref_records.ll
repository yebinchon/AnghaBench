; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_cmp_packed_ref_records.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_cmp_packed_ref_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snapshot_record = type { i8* }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_packed_ref_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_packed_ref_records(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snapshot_record*, align 8
  %7 = alloca %struct.snapshot_record*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.snapshot_record*
  store %struct.snapshot_record* %11, %struct.snapshot_record** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.snapshot_record*
  store %struct.snapshot_record* %13, %struct.snapshot_record** %7, align 8
  %14 = load %struct.snapshot_record*, %struct.snapshot_record** %6, align 8
  %15 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %8, align 8
  %23 = load %struct.snapshot_record*, %struct.snapshot_record** %7, align 8
  %24 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %2, %68
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 0, i32 -1
  store i32 %43, i32* %3, align 4
  br label %73

44:                                               ; preds = %32
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %73

58:                                               ; preds = %52
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp slt i32 %61, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 -1, i32 1
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %44
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  br label %32

73:                                               ; preds = %58, %57, %37
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
