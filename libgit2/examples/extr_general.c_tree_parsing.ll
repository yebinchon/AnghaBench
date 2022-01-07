; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_general.c_tree_parsing.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_general.c_tree_parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"\0A*Tree Parsing*\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"f60079018b664e4e79329a7ef9559c8d9e0378d1\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"tree entries: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Entry name: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"README\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @tree_parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_parsing(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @git_oid_fromstr(i32* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @git_tree_lookup(i32** %6, i32* %10, i32* %7)
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @git_tree_entrycount(i32* %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32* @git_tree_entry_byindex(i32* %17, i32 0)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @git_tree_entry_name(i32* %19)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @git_tree_entry_byname(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @git_tree_entry_name(i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @git_tree_entry_to_object(i32** %5, i32* %26, i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @git_object_free(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @git_tree_free(i32* %31)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32*, i32*) #1

declare dso_local i64 @git_tree_entrycount(i32*) #1

declare dso_local i32* @git_tree_entry_byindex(i32*, i32) #1

declare dso_local i8* @git_tree_entry_name(i32*) #1

declare dso_local i32* @git_tree_entry_byname(i32*, i8*) #1

declare dso_local i32 @git_tree_entry_to_object(i32**, i32*, i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
