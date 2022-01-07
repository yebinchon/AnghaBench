; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_refname_atom_parser_internal.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_refname_atom_parser_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refname_atom = type { i32, i32, i32 }
%struct.strbuf = type { i32 }

@R_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"short\00", align 1
@R_SHORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"lstrip=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"strip=\00", align 1
@R_LSTRIP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Integer value expected refname:lstrip=%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rstrip=\00", align 1
@R_RSTRIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Integer value expected refname:rstrip=%s\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"unrecognized %%(%s) argument: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.refname_atom*, i8*, i8*, %struct.strbuf*)* @refname_atom_parser_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refname_atom_parser_internal(%struct.refname_atom* %0, i8* %1, i8* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.refname_atom*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf*, align 8
  store %struct.refname_atom* %0, %struct.refname_atom** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @R_NORMAL, align 4
  %14 = load %struct.refname_atom*, %struct.refname_atom** %6, align 8
  %15 = getelementptr inbounds %struct.refname_atom, %struct.refname_atom* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %75

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @R_SHORT, align 4
  %22 = load %struct.refname_atom*, %struct.refname_atom** %6, align 8
  %23 = getelementptr inbounds %struct.refname_atom, %struct.refname_atom* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %74

24:                                               ; preds = %16
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @skip_prefix(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @skip_prefix(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @R_LSTRIP, align 4
  %34 = load %struct.refname_atom*, %struct.refname_atom** %6, align 8
  %35 = getelementptr inbounds %struct.refname_atom, %struct.refname_atom* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.refname_atom*, %struct.refname_atom** %6, align 8
  %38 = getelementptr inbounds %struct.refname_atom, %struct.refname_atom* %37, i32 0, i32 2
  %39 = call i64 @strtol_i(i8* %36, i32 10, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %43 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (%struct.strbuf*, i32, i32, i8*, ...) @strbuf_addf_ret(%struct.strbuf* %42, i32 -1, i32 %43, i8* %44)
  store i32 %45, i32* %5, align 4
  br label %76

46:                                               ; preds = %32
  br label %73

47:                                               ; preds = %28
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @skip_prefix(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %7)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* @R_RSTRIP, align 4
  %53 = load %struct.refname_atom*, %struct.refname_atom** %6, align 8
  %54 = getelementptr inbounds %struct.refname_atom, %struct.refname_atom* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.refname_atom*, %struct.refname_atom** %6, align 8
  %57 = getelementptr inbounds %struct.refname_atom, %struct.refname_atom* %56, i32 0, i32 0
  %58 = call i64 @strtol_i(i8* %55, i32 10, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %62 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 (%struct.strbuf*, i32, i32, i8*, ...) @strbuf_addf_ret(%struct.strbuf* %61, i32 -1, i32 %62, i8* %63)
  store i32 %64, i32* %5, align 4
  br label %76

65:                                               ; preds = %51
  br label %72

66:                                               ; preds = %47
  %67 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %68 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 (%struct.strbuf*, i32, i32, i8*, ...) @strbuf_addf_ret(%struct.strbuf* %67, i32 -1, i32 %68, i8* %69, i8* %70)
  store i32 %71, i32* %5, align 4
  br label %76

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %46
  br label %74

74:                                               ; preds = %73, %20
  br label %75

75:                                               ; preds = %74, %12
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %66, %60, %41
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @strtol_i(i8*, i32, i32*) #1

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
