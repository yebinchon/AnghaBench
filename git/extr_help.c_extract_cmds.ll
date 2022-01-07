; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_extract_cmds.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_extract_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdname_help = type { i32, i32* }

@command_list = common dso_local global %struct.cmdname_help* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"empty command_list[] is a sign of broken generate-cmdlist.sh\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdname_help**, i32)* @extract_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_cmds(%struct.cmdname_help** %0, i32 %1) #0 {
  %3 = alloca %struct.cmdname_help**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmdname_help*, align 8
  %8 = alloca %struct.cmdname_help*, align 8
  store %struct.cmdname_help** %0, %struct.cmdname_help*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.cmdname_help*, %struct.cmdname_help** @command_list, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.cmdname_help* %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @BUG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.cmdname_help*, %struct.cmdname_help** %7, align 8
  %16 = load %struct.cmdname_help*, %struct.cmdname_help** @command_list, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.cmdname_help* %16)
  %18 = add nsw i32 %17, 1
  %19 = call i32 @ALLOC_ARRAY(%struct.cmdname_help* %15, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %59, %14
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cmdname_help*, %struct.cmdname_help** @command_list, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.cmdname_help* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %20
  %26 = load %struct.cmdname_help*, %struct.cmdname_help** @command_list, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %26, i64 %28
  store %struct.cmdname_help* %29, %struct.cmdname_help** %8, align 8
  %30 = load %struct.cmdname_help*, %struct.cmdname_help** %8, align 8
  %31 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %59

37:                                               ; preds = %25
  %38 = load %struct.cmdname_help*, %struct.cmdname_help** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %38, i64 %40
  %42 = load %struct.cmdname_help*, %struct.cmdname_help** %8, align 8
  %43 = bitcast %struct.cmdname_help* %41 to i8*
  %44 = bitcast %struct.cmdname_help* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 16, i1 false)
  %45 = load %struct.cmdname_help*, %struct.cmdname_help** %8, align 8
  %46 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.cmdname_help*, %struct.cmdname_help** %8, align 8
  %49 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @drop_prefix(i32* %47, i32 %50)
  %52 = load %struct.cmdname_help*, %struct.cmdname_help** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %52, i64 %54
  %56 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %55, i32 0, i32 1
  store i32* %51, i32** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %37, %36
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %20

62:                                               ; preds = %20
  %63 = load %struct.cmdname_help*, %struct.cmdname_help** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %63, i64 %65
  %67 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  %68 = load %struct.cmdname_help*, %struct.cmdname_help** %7, align 8
  %69 = load %struct.cmdname_help**, %struct.cmdname_help*** %3, align 8
  store %struct.cmdname_help* %68, %struct.cmdname_help** %69, align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.cmdname_help*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @ALLOC_ARRAY(%struct.cmdname_help*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @drop_prefix(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
