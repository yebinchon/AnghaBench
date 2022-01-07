; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_submodule_strategy_to_string.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_submodule_strategy_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.submodule_update_strategy = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"!%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @submodule_strategy_to_string(%struct.submodule_update_strategy* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.submodule_update_strategy*, align 8
  %4 = alloca %struct.strbuf, align 4
  store %struct.submodule_update_strategy* %0, %struct.submodule_update_strategy** %3, align 8
  %5 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %3, align 8
  %7 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %20 [
    i32 133, label %9
    i32 131, label %10
    i32 129, label %11
    i32 130, label %12
    i32 128, label %13
    i32 132, label %14
  ]

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %21

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %21

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %21

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %21

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %3, align 8
  %16 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = call i8* @strbuf_detach(%struct.strbuf* %4, i32* null)
  store i8* %19, i8** %2, align 8
  br label %21

20:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %21

21:                                               ; preds = %20, %14, %13, %12, %11, %10, %9
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
