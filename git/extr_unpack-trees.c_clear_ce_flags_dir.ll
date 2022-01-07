; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_clear_ce_flags_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_clear_ce_flags_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32 }
%struct.strbuf = type { i64, i32 }
%struct.pattern_list = type { i32 }

@DT_DIR = common dso_local global i32 0, align 4
@UNDECIDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.cache_entry**, i32, %struct.strbuf*, i8*, i32, i32, %struct.pattern_list*, i32)* @clear_ce_flags_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_ce_flags_dir(%struct.index_state* %0, %struct.cache_entry** %1, i32 %2, %struct.strbuf* %3, i8* %4, i32 %5, i32 %6, %struct.pattern_list* %7, i32 %8) #0 {
  %10 = alloca %struct.index_state*, align 8
  %11 = alloca %struct.cache_entry**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.strbuf*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pattern_list*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.cache_entry**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %10, align 8
  store %struct.cache_entry** %1, %struct.cache_entry*** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.strbuf* %3, %struct.strbuf** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.pattern_list* %7, %struct.pattern_list** %17, align 8
  store i32 %8, i32* %18, align 4
  %24 = load i32, i32* @DT_DIR, align 4
  store i32 %24, i32* %20, align 4
  %25 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = load %struct.pattern_list*, %struct.pattern_list** %17, align 8
  %33 = load %struct.index_state*, %struct.index_state** %10, align 8
  %34 = call i32 @path_matches_pattern_list(i32 %27, i64 %30, i8* %31, i32* %20, %struct.pattern_list* %32, %struct.index_state* %33)
  store i32 %34, i32* %22, align 4
  %35 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %36 = call i32 @strbuf_addch(%struct.strbuf* %35, i8 signext 47)
  %37 = load i32, i32* %22, align 4
  %38 = load i32, i32* @UNDECIDED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %9
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %22, align 4
  br label %42

42:                                               ; preds = %40, %9
  %43 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  store %struct.cache_entry** %43, %struct.cache_entry*** %19, align 8
  br label %44

44:                                               ; preds = %67, %42
  %45 = load %struct.cache_entry**, %struct.cache_entry*** %19, align 8
  %46 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %46, i64 %48
  %50 = icmp ne %struct.cache_entry** %45, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = load %struct.cache_entry**, %struct.cache_entry*** %19, align 8
  %53 = load %struct.cache_entry*, %struct.cache_entry** %52, align 8
  store %struct.cache_entry* %53, %struct.cache_entry** %23, align 8
  %54 = load %struct.cache_entry*, %struct.cache_entry** %23, align 8
  %55 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @strncmp(i32 %56, i32 %59, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %70

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.cache_entry**, %struct.cache_entry*** %19, align 8
  %69 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %68, i32 1
  store %struct.cache_entry** %69, %struct.cache_entry*** %19, align 8
  br label %44

70:                                               ; preds = %65, %44
  %71 = load %struct.index_state*, %struct.index_state** %10, align 8
  %72 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %73 = load %struct.cache_entry**, %struct.cache_entry*** %19, align 8
  %74 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %75 = ptrtoint %struct.cache_entry** %73 to i64
  %76 = ptrtoint %struct.cache_entry** %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.pattern_list*, %struct.pattern_list** %17, align 8
  %84 = load i32, i32* %22, align 4
  %85 = call i32 @clear_ce_flags_1(%struct.index_state* %71, %struct.cache_entry** %72, i32 %79, %struct.strbuf* %80, i32 %81, i32 %82, %struct.pattern_list* %83, i32 %84)
  store i32 %85, i32* %21, align 4
  %86 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %87 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, 1
  %91 = call i32 @strbuf_setlen(%struct.strbuf* %86, i64 %90)
  %92 = load i32, i32* %21, align 4
  ret i32 %92
}

declare dso_local i32 @path_matches_pattern_list(i32, i64, i8*, i32*, %struct.pattern_list*, %struct.index_state*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i64 @strncmp(i32, i32, i64) #1

declare dso_local i32 @clear_ce_flags_1(%struct.index_state*, %struct.cache_entry**, i32, %struct.strbuf*, i32, i32, %struct.pattern_list*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
