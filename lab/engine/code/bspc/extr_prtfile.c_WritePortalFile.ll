; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_prtfile.c_WritePortalFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_prtfile.c_WritePortalFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"--- WritePortalFile ---\0A\00", align 1
@num_visclusters = common dso_local global i32 0, align 4
@num_visportals = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.prt\00", align 1
@source = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"writing %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@pf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Error opening %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PORTALFILE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%5i visclusters\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%5i visportals\0A\00", align 1
@clusterleaf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WritePortalFile(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %4, align 8
  store i32 0, i32* @num_visclusters, align 4
  store i32 0, i32* @num_visportals, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @Tree_FreePortals_r(i32* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = call i32 @MakeHeadnodePortals(%struct.TYPE_4__* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @CreateVisPortals_r(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @NumberLeafs_r(i32* %15)
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %18 = load i8*, i8** @source, align 8
  %19 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %21 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %23 = call i32 @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %23, i32* @pf, align 4
  %24 = load i32, i32* @pf, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %28 = call i32 @Error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* @pf, align 4
  %31 = load i8*, i8** @PORTALFILE, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @pf, align 4
  %34 = load i32, i32* @num_visclusters, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @pf, align 4
  %37 = load i32, i32* @num_visportals, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @num_visclusters, align 4
  %40 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @num_visportals, align 4
  %42 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @WritePortalFile_r(i32* %43)
  %45 = load i32, i32* @pf, align 4
  %46 = call i32 @fclose(i32 %45)
  store i32 1, i32* @clusterleaf, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @SaveClusters_r(i32* %47)
  ret void
}

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i32 @Tree_FreePortals_r(i32*) #1

declare dso_local i32 @MakeHeadnodePortals(%struct.TYPE_4__*) #1

declare dso_local i32 @CreateVisPortals_r(i32*) #1

declare dso_local i32 @NumberLeafs_r(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @WritePortalFile_r(i32*) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @SaveClusters_r(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
