; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_cat-file.c_show_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_cat-file.c_show_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%06o %s %s\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @show_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_tree(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @git_tree_entrycount(i32* %8)
  %10 = trunc i64 %9 to i32
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %37, %1
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load i32*, i32** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32* @git_tree_entry_byindex(i32* %22, i64 %23)
  store i32* %24, i32** %7, align 8
  %25 = trunc i64 %14 to i32
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @git_tree_entry_id(i32* %26)
  %28 = call i32 @git_oid_tostr(i8* %16, i32 %25, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @git_tree_entry_filemode(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @git_tree_entry_type(i32* %31)
  %33 = call i8* @git_object_type2string(i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i8* @git_tree_entry_name(i32* %34)
  %36 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %33, i8* %16, i8* %35)
  br label %37

37:                                               ; preds = %21
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %17

40:                                               ; preds = %17
  %41 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %41)
  ret void
}

declare dso_local i64 @git_tree_entrycount(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @git_tree_entry_byindex(i32*, i64) #1

declare dso_local i32 @git_oid_tostr(i8*, i32, i32) #1

declare dso_local i32 @git_tree_entry_id(i32*) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @git_tree_entry_filemode(i32*) #1

declare dso_local i8* @git_object_type2string(i32) #1

declare dso_local i32 @git_tree_entry_type(i32*) #1

declare dso_local i8* @git_tree_entry_name(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
