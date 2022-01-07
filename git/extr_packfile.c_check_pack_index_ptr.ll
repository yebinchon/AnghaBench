; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_check_pack_index_ptr.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_check_pack_index_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"offset before start of pack index for %s (corrupt index?)\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"offset beyond end of pack index for %s (truncated index?)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_pack_index_ptr(%struct.packed_git* %0, i8* %1) #0 {
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %5, align 8
  %9 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %10 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %14 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %24 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @die(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 -8
  %31 = icmp uge i8* %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %35 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @die(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
