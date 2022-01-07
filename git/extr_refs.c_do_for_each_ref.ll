; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_do_for_each_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_do_for_each_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.ref_iterator = type { i32 }
%struct.do_for_each_ref_help = type { i8*, i32 }

@the_repository = common dso_local global i32 0, align 4
@do_for_each_ref_helper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8*, i32, i32, i32, i8*)* @do_for_each_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_for_each_ref(%struct.ref_store* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref_store*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ref_iterator*, align 8
  %15 = alloca %struct.do_for_each_ref_help, align 8
  store %struct.ref_store* %0, %struct.ref_store** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = getelementptr inbounds %struct.do_for_each_ref_help, %struct.do_for_each_ref_help* %15, i32 0, i32 0
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %16, align 8
  %20 = getelementptr inbounds %struct.do_for_each_ref_help, %struct.do_for_each_ref_help* %15, i32 0, i32 1
  %21 = load i8*, i8** %13, align 8
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ref_store*, %struct.ref_store** %8, align 8
  %24 = icmp ne %struct.ref_store* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %36

26:                                               ; preds = %6
  %27 = load %struct.ref_store*, %struct.ref_store** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call %struct.ref_iterator* @refs_ref_iterator_begin(%struct.ref_store* %27, i8* %28, i32 %29, i32 %30)
  store %struct.ref_iterator* %31, %struct.ref_iterator** %14, align 8
  %32 = load i32, i32* @the_repository, align 4
  %33 = load %struct.ref_iterator*, %struct.ref_iterator** %14, align 8
  %34 = load i32, i32* @do_for_each_ref_helper, align 4
  %35 = call i32 @do_for_each_repo_ref_iterator(i32 %32, %struct.ref_iterator* %33, i32 %34, %struct.do_for_each_ref_help* %15)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %26, %25
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.ref_iterator* @refs_ref_iterator_begin(%struct.ref_store*, i8*, i32, i32) #1

declare dso_local i32 @do_for_each_repo_ref_iterator(i32, %struct.ref_iterator*, i32, %struct.do_for_each_ref_help*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
