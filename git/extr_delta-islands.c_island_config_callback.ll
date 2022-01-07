; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_island_config_callback.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_island_config_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"pack.island\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@island_regexes = common dso_local global i32* null, align 8
@island_regexes_nr = common dso_local global i32 0, align 4
@island_regexes_alloc = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to load island regex for '%s': %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"pack.islandcore\00", align 1
@core_island_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @island_config_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @island_config_callback(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %3
  %13 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @config_error_nonbool(i8* %17)
  store i32 %18, i32* %4, align 4
  br label %62

19:                                               ; preds = %12
  %20 = load i32*, i32** @island_regexes, align 8
  %21 = load i32, i32* @island_regexes_nr, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @island_regexes_alloc, align 4
  %24 = call i32 @ALLOC_GROW(i32* %20, i32 %22, i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 94
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 @strbuf_addch(%struct.strbuf* %8, i8 signext 94)
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strbuf_addstr(%struct.strbuf* %8, i8* %32)
  %34 = load i32*, i32** @island_regexes, align 8
  %35 = load i32, i32* @island_regexes_nr, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @REG_EXTENDED, align 4
  %41 = call i64 @regcomp(i32* %37, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @die(i32 %44, i8* %45, i32 %47)
  br label %49

49:                                               ; preds = %43, %31
  %50 = call i32 @strbuf_release(%struct.strbuf* %8)
  %51 = load i32, i32* @island_regexes_nr, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @island_regexes_nr, align 4
  store i32 0, i32* %4, align 4
  br label %62

53:                                               ; preds = %3
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @git_config_string(i32* @core_island_name, i8* %58, i8* %59)
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %57, %49, %16
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @ALLOC_GROW(i32*, i32, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @regcomp(i32*, i32, i32) #1

declare dso_local i32 @die(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
