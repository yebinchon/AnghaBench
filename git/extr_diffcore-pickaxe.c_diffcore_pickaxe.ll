; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-pickaxe.c_diffcore_pickaxe.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-pickaxe.c_diffcore_pickaxe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.diff_options = type { i8*, i32 }

@DIFF_PICKAXE_REGEX = common dso_local global i32 0, align 4
@DIFF_PICKAXE_KIND_G = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@DIFF_PICKAXE_IGNORE_CASE = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@DIFF_PICKAXE_KIND_S = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@tolower_trans_tbl = common dso_local global i32* null, align 8
@diff_queued_diff = common dso_local global i32 0, align 4
@diff_grep = common dso_local global i32 0, align 4
@has_changes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diffcore_pickaxe(%struct.diff_options* %0) #0 {
  %2 = alloca %struct.diff_options*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %2, align 8
  %11 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %12 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %3, align 8
  %14 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %15 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DIFF_PICKAXE_REGEX, align 4
  %19 = load i32, i32* @DIFF_PICKAXE_KIND_G, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load i32, i32* @REG_EXTENDED, align 4
  %25 = load i32, i32* @REG_NEWLINE, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %28 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DIFF_PICKAXE_IGNORE_CASE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @REG_ICASE, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @regcomp_or_die(i32* %5, i8* %38, i32 %39)
  store i32* %5, i32** %6, align 8
  br label %91

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @DIFF_PICKAXE_KIND_S, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %90

46:                                               ; preds = %41
  %47 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %48 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DIFF_PICKAXE_IGNORE_CASE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %46
  %54 = load i8*, i8** %3, align 8
  %55 = call i64 @has_non_ascii(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %59 = load i32, i32* @REG_NEWLINE, align 4
  %60 = load i32, i32* @REG_ICASE, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @basic_regex_quote_buf(%struct.strbuf* %9, i8* %62)
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @regcomp_or_die(i32* %5, i8* %65, i32 %66)
  %68 = call i32 @strbuf_release(%struct.strbuf* %9)
  store i32* %5, i32** %6, align 8
  br label %89

69:                                               ; preds = %53, %46
  %70 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %71 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DIFF_PICKAXE_IGNORE_CASE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32*, i32** @tolower_trans_tbl, align 8
  br label %79

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32* [ %77, %76 ], [ null, %78 ]
  %81 = call i32* @kwsalloc(i32* %80)
  store i32* %81, i32** %7, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = call i32 @kwsincr(i32* %82, i8* %83, i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @kwsprep(i32* %87)
  br label %89

89:                                               ; preds = %79, %57
  br label %90

90:                                               ; preds = %89, %41
  br label %91

91:                                               ; preds = %90, %37
  %92 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @DIFF_PICKAXE_KIND_G, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @diff_grep, align 4
  br label %103

101:                                              ; preds = %91
  %102 = load i32, i32* @has_changes, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = call i32 @pickaxe(i32* @diff_queued_diff, %struct.diff_options* %92, i32* %93, i32* %94, i32 %104)
  %106 = load i32*, i32** %6, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @regfree(i32* %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32*, i32** %7, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @kwsfree(i32* %115)
  br label %117

117:                                              ; preds = %114, %111
  ret void
}

declare dso_local i32 @regcomp_or_die(i32*, i8*, i32) #1

declare dso_local i64 @has_non_ascii(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @basic_regex_quote_buf(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32* @kwsalloc(i32*) #1

declare dso_local i32 @kwsincr(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kwsprep(i32*) #1

declare dso_local i32 @pickaxe(i32*, %struct.diff_options*, i32*, i32*, i32) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @kwsfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
