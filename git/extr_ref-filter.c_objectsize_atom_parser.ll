; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_objectsize_atom_parser.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_objectsize_atom_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.ref_format = type { i32 }
%struct.used_atom = type { i8* }
%struct.strbuf = type { i32 }

@oi_deref = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@oi = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"unrecognized %%(objectsize) argument: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_format*, %struct.used_atom*, i8*, %struct.strbuf*)* @objectsize_atom_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objectsize_atom_parser(%struct.ref_format* %0, %struct.used_atom* %1, i8* %2, %struct.strbuf* %3) #0 {
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
  br i1 %11, label %22, label %12

12:                                               ; preds = %4
  %13 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %14 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 42
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @oi_deref, i32 0, i32 2), i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @oi_deref, i32 0, i32 1, i32 1), align 8
  br label %21

20:                                               ; preds = %12
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oi, i32 0, i32 2), i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oi, i32 0, i32 1, i32 1), align 8
  br label %21

21:                                               ; preds = %20, %19
  br label %42

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %28 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 42
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @oi_deref, i32 0, i32 0), i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @oi_deref, i32 0, i32 1, i32 0), align 8
  br label %35

34:                                               ; preds = %26
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oi, i32 0, i32 0), i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @oi, i32 0, i32 1, i32 0), align 8
  br label %35

35:                                               ; preds = %34, %33
  br label %41

36:                                               ; preds = %22
  %37 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %38 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strbuf_addf_ret(%struct.strbuf* %37, i32 -1, i32 %38, i8* %39)
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %21
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
