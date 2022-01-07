; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_open_pack_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_open_pack_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c".pack\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"pack_name does not end in .pack\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%.*s.idx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_pack_index(%struct.packed_git* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  %7 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %8 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %14 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strip_suffix(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %5)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = call i32 @BUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %24 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @xstrfmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %25)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %29 = call i32 @check_packed_git_idx(i8* %27, %struct.packed_git* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %20, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @strip_suffix(i32, i8*, i64*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i32, i32) #1

declare dso_local i32 @check_packed_git_idx(i8*, %struct.packed_git*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
