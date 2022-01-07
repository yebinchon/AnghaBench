; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_if_atom_parser.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_if_atom_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_format = type { i32 }
%struct.used_atom = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.strbuf = type { i32 }

@COMPARE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"equals=\00", align 1
@COMPARE_EQUAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"notequals=\00", align 1
@COMPARE_UNEQUAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"unrecognized %%(if) argument: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_format*, %struct.used_atom*, i8*, %struct.strbuf*)* @if_atom_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_atom_parser(%struct.ref_format* %0, %struct.used_atom* %1, i8* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_format*, align 8
  %7 = alloca %struct.used_atom*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf*, align 8
  store %struct.ref_format* %0, %struct.ref_format** %6, align 8
  store %struct.used_atom* %1, %struct.used_atom** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @COMPARE_NONE, align 4
  %14 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %15 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  store i32 0, i32* %5, align 4
  br label %54

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %21 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i64 @skip_prefix(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i32, i32* @COMPARE_EQUAL, align 4
  %28 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %29 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  br label %52

32:                                               ; preds = %18
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %35 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i64 @skip_prefix(i8* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* @COMPARE_UNEQUAL, align 4
  %42 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %43 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  br label %51

46:                                               ; preds = %32
  %47 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %48 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strbuf_addf_ret(%struct.strbuf* %47, i32 -1, i32 %48, i8* %49)
  store i32 %50, i32* %5, align 4
  br label %54

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %46, %12
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @skip_prefix(i8*, i8*, i32*) #1

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
