; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_parse_from_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_parse_from_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.branch = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Not a valid commit: %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"tree \00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"The commit %s is corrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.branch*, i8*, i64)* @parse_from_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_from_commit(%struct.branch* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.branch*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.branch* %0, %struct.branch** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_hash_algo, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 6
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %10, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %9, %3
  %18 = load %struct.branch*, %struct.branch** %4, align 8
  %19 = getelementptr inbounds %struct.branch, %struct.branch* %18, i32 0, i32 1
  %20 = call i32 @oid_to_hex(i32* %19)
  %21 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  %29 = load %struct.branch*, %struct.branch** %4, align 8
  %30 = getelementptr inbounds %struct.branch, %struct.branch* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i64 @get_oid_hex(i8* %28, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26, %22
  %38 = load %struct.branch*, %struct.branch** %4, align 8
  %39 = getelementptr inbounds %struct.branch, %struct.branch* %38, i32 0, i32 1
  %40 = call i32 @oid_to_hex(i32* %39)
  %41 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %26
  %43 = load %struct.branch*, %struct.branch** %4, align 8
  %44 = getelementptr inbounds %struct.branch, %struct.branch* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.branch*, %struct.branch** %4, align 8
  %50 = getelementptr inbounds %struct.branch, %struct.branch* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @oidcpy(i32* %48, i32* %54)
  ret void
}

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @get_oid_hex(i8*, i32*) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
