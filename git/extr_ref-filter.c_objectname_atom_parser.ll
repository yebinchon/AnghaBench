; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_objectname_atom_parser.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_objectname_atom_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_format = type { i32 }
%struct.used_atom = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.strbuf = type { i32 }

@O_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"short\00", align 1
@O_SHORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"short=\00", align 1
@O_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"positive value expected objectname:short=%s\00", align 1
@MINIMUM_ABBREV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"unrecognized %%(objectname) argument: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_format*, %struct.used_atom*, i8*, %struct.strbuf*)* @objectname_atom_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objectname_atom_parser(%struct.ref_format* %0, %struct.used_atom* %1, i8* %2, %struct.strbuf* %3) #0 {
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
  %13 = load i32, i32* @O_FULL, align 4
  %14 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %15 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 8
  br label %79

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @O_SHORT, align 4
  %24 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %25 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 8
  br label %78

28:                                               ; preds = %18
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @skip_prefix(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load i32, i32* @O_LENGTH, align 4
  %34 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %35 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %40 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i64 @strtoul_ui(i8* %38, i32 10, i64* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %32
  %46 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %47 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45, %32
  %53 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %54 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strbuf_addf_ret(%struct.strbuf* %53, i32 -1, i32 %54, i8* %55)
  store i32 %56, i32* %5, align 4
  br label %80

57:                                               ; preds = %45
  %58 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %59 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MINIMUM_ABBREV, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i64, i64* @MINIMUM_ABBREV, align 8
  %67 = load %struct.used_atom*, %struct.used_atom** %7, align 8
  %68 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 %66, i64* %70, align 8
  br label %71

71:                                               ; preds = %65, %57
  br label %77

72:                                               ; preds = %28
  %73 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %74 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @strbuf_addf_ret(%struct.strbuf* %73, i32 -1, i32 %74, i8* %75)
  store i32 %76, i32* %5, align 4
  br label %80

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %22
  br label %79

79:                                               ; preds = %78, %12
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %72, %52
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @strtoul_ui(i8*, i32, i64*) #1

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
