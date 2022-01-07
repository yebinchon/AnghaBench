; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_cfg.c_tr2_cfg_load_patterns.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_cfg.c_tr2_cfg_load_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }

@tr2_cfg_loaded = common dso_local global i32 0, align 4
@tr2_cfg_count_patterns = common dso_local global i32 0, align 4
@TR2_SYSENV_CFG_PARAM = common dso_local global i32 0, align 4
@tr2_cfg_patterns = common dso_local global %struct.strbuf** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tr2_cfg_load_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr2_cfg_load_patterns() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.strbuf**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = load i32, i32* @tr2_cfg_loaded, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @tr2_cfg_count_patterns, align 4
  store i32 %8, i32* %1, align 4
  br label %76

9:                                                ; preds = %0
  store i32 1, i32* @tr2_cfg_loaded, align 4
  %10 = load i32, i32* @TR2_SYSENV_CFG_PARAM, align 4
  %11 = call i8* @tr2_sysenv_get(i32 %10)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %9
  %19 = load i32, i32* @tr2_cfg_count_patterns, align 4
  store i32 %19, i32* %1, align 4
  br label %76

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call %struct.strbuf** @strbuf_split_buf(i8* %21, i32 %23, i8 signext 44, i32 -1)
  store %struct.strbuf** %24, %struct.strbuf*** @tr2_cfg_patterns, align 8
  %25 = load %struct.strbuf**, %struct.strbuf*** @tr2_cfg_patterns, align 8
  store %struct.strbuf** %25, %struct.strbuf*** %2, align 8
  br label %26

26:                                               ; preds = %64, %20
  %27 = load %struct.strbuf**, %struct.strbuf*** %2, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %27, align 8
  %29 = icmp ne %struct.strbuf* %28, null
  br i1 %29, label %30, label %67

30:                                               ; preds = %26
  %31 = load %struct.strbuf**, %struct.strbuf*** %2, align 8
  %32 = load %struct.strbuf*, %struct.strbuf** %31, align 8
  store %struct.strbuf* %32, %struct.strbuf** %4, align 8
  %33 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 44
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %52 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @strbuf_setlen(%struct.strbuf* %51, i32 %55)
  br label %57

57:                                               ; preds = %50, %37, %30
  %58 = load %struct.strbuf**, %struct.strbuf*** %2, align 8
  %59 = load %struct.strbuf*, %struct.strbuf** %58, align 8
  %60 = call i32 @strbuf_trim_trailing_newline(%struct.strbuf* %59)
  %61 = load %struct.strbuf**, %struct.strbuf*** %2, align 8
  %62 = load %struct.strbuf*, %struct.strbuf** %61, align 8
  %63 = call i32 @strbuf_trim(%struct.strbuf* %62)
  br label %64

64:                                               ; preds = %57
  %65 = load %struct.strbuf**, %struct.strbuf*** %2, align 8
  %66 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %65, i32 1
  store %struct.strbuf** %66, %struct.strbuf*** %2, align 8
  br label %26

67:                                               ; preds = %26
  %68 = load %struct.strbuf**, %struct.strbuf*** %2, align 8
  %69 = load %struct.strbuf**, %struct.strbuf*** @tr2_cfg_patterns, align 8
  %70 = ptrtoint %struct.strbuf** %68 to i64
  %71 = ptrtoint %struct.strbuf** %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* @tr2_cfg_count_patterns, align 4
  %75 = load i32, i32* @tr2_cfg_count_patterns, align 4
  store i32 %75, i32* %1, align 4
  br label %76

76:                                               ; preds = %67, %18, %7
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i8* @tr2_sysenv_get(i32) #1

declare dso_local %struct.strbuf** @strbuf_split_buf(i8*, i32, i8 signext, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_trim_trailing_newline(%struct.strbuf*) #1

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
