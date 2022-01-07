; ModuleID = '/home/carl/AnghaBench/git/extr_pack-check.c_verify_pack_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-check.c_verify_pack_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i8*, i32*)*, i32 (i32*, i8*, i32)*, i32 (i32*)* }
%struct.packed_git = type { i32, i8*, i32 }

@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"packfile %s index not opened\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Packfile index for %s hash mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_pack_index(%struct.packed_git* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  %11 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %16 = call i64 @open_pack_index(%struct.packed_git* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %20 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %67

23:                                               ; preds = %1
  %24 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %25 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %28 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %5, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32 (i32*)*, i32 (i32*)** %31, align 8
  %33 = call i32 %32(i32* %6)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %38, %41
  %43 = call i32 %36(i32* %6, i8* %37, i32 %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %45, align 8
  %47 = call i32 %46(i8* %14, i32* %6)
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  %58 = call i32 @hasheq(i8* %14, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %23
  %61 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %62 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %60, %23
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %18
  %68 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @open_pack_index(%struct.packed_git*) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @hasheq(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
