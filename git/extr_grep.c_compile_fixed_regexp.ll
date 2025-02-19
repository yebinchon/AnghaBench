; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_compile_fixed_regexp.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_compile_fixed_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.grep_pat = type { i32, i32 }
%struct.grep_opt = type { i64, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@REG_ICASE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fixed %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_pat*, %struct.grep_opt*)* @compile_fixed_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compile_fixed_regexp(%struct.grep_pat* %0, %struct.grep_opt* %1) #0 {
  %3 = alloca %struct.grep_pat*, align 8
  %4 = alloca %struct.grep_opt*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  store %struct.grep_pat* %0, %struct.grep_pat** %3, align 8
  store %struct.grep_opt* %1, %struct.grep_opt** %4, align 8
  %9 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %7, align 4
  %10 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %11 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @basic_regex_quote_buf(%struct.strbuf* %5, i32 %12)
  %14 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %15 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @REG_ICASE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %24 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @regcomp(i32* %24, i8* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %30 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i32, i32* @stderr, align 4
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %33, %22
  %39 = call i32 @strbuf_release(%struct.strbuf* %5)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %45 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %44, i32 0, i32 0
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %47 = call i32 @regerror(i32 %43, i32* %45, i8* %46, i32 1024)
  %48 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %50 = call i32 @compile_regexp_failed(%struct.grep_pat* %48, i8* %49)
  br label %51

51:                                               ; preds = %42, %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @basic_regex_quote_buf(%struct.strbuf*, i32) #2

declare dso_local i32 @regcomp(i32*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #2

declare dso_local i32 @compile_regexp_failed(%struct.grep_pat*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
