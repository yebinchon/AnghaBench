; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_show_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_show_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refname_atom = type { i64, i32, i32 }

@R_SHORT = common dso_local global i64 0, align 8
@warn_ambiguous_refs = common dso_local global i32 0, align 4
@R_LSTRIP = common dso_local global i64 0, align 8
@R_RSTRIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.refname_atom*, i8*)* @show_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @show_ref(%struct.refname_atom* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.refname_atom*, align 8
  %5 = alloca i8*, align 8
  store %struct.refname_atom* %0, %struct.refname_atom** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.refname_atom*, %struct.refname_atom** %4, align 8
  %7 = getelementptr inbounds %struct.refname_atom, %struct.refname_atom* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @R_SHORT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @warn_ambiguous_refs, align 4
  %14 = call i8* @shorten_unambiguous_ref(i8* %12, i32 %13)
  store i8* %14, i8** %3, align 8
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.refname_atom*, %struct.refname_atom** %4, align 8
  %17 = getelementptr inbounds %struct.refname_atom, %struct.refname_atom* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @R_LSTRIP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.refname_atom*, %struct.refname_atom** %4, align 8
  %24 = getelementptr inbounds %struct.refname_atom, %struct.refname_atom* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @lstrip_ref_components(i8* %22, i32 %25)
  store i8* %26, i8** %3, align 8
  br label %42

27:                                               ; preds = %15
  %28 = load %struct.refname_atom*, %struct.refname_atom** %4, align 8
  %29 = getelementptr inbounds %struct.refname_atom, %struct.refname_atom* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @R_RSTRIP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.refname_atom*, %struct.refname_atom** %4, align 8
  %36 = getelementptr inbounds %struct.refname_atom, %struct.refname_atom* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @rstrip_ref_components(i8* %34, i32 %37)
  store i8* %38, i8** %3, align 8
  br label %42

39:                                               ; preds = %27
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @xstrdup(i8* %40)
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %39, %33, %21, %11
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i8* @shorten_unambiguous_ref(i8*, i32) #1

declare dso_local i8* @lstrip_ref_components(i8*, i32) #1

declare dso_local i8* @rstrip_ref_components(i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
