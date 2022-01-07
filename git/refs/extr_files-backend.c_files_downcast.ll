; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_downcast.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_downcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.ref_store = type { %struct.TYPE_2__* }

@refs_be_files = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"ref_store is type \22%s\22 not \22files\22 in %s\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"operation %s requires abilities 0x%x, but only have 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.files_ref_store* (%struct.ref_store*, i32, i8*)* @files_downcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.files_ref_store* @files_downcast(%struct.ref_store* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.files_ref_store*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %9 = getelementptr inbounds %struct.ref_store, %struct.ref_store* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, @refs_be_files
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %14 = getelementptr inbounds %struct.ref_store, %struct.ref_store* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, i8*, ...) @BUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  br label %22

22:                                               ; preds = %12, %3
  %23 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %24 = bitcast %struct.ref_store* %23 to %struct.files_ref_store*
  store %struct.files_ref_store* %24, %struct.files_ref_store** %7, align 8
  %25 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %26 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %36 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i8*, ...) @BUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %22
  %40 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  ret %struct.files_ref_store* %40
}

declare dso_local i32 @BUG(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
