; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_aselib.c_ASE_KeyMESH_ANIMATION.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_aselib.c_ASE_KeyMESH_ANIMATION.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"*MESH\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"...found MESH\0A\00", align 1
@ASE_KeyMESH = common dso_local global i32 0, align 4
@ase = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MAX_ASE_ANIMATION_FRAMES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Too many animation frames\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Unknown token '%s' while parsing MESH_ANIMATION\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ASE_KeyMESH_ANIMATION to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ASE_KeyMESH_ANIMATION(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.TYPE_9__* (...) @ASE_GetCurrentMesh()
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %1
  %9 = call i32 @VERBOSE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i32 @memset(%struct.TYPE_9__* %28, i32 0, i32 24)
  %30 = load i32, i32* @ASE_KeyMESH, align 4
  %31 = call i32 @ASE_ParseBracedBlock(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ase, i32 0, i32 1), align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ase, i32 0, i32 0), align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* @MAX_ASE_ANIMATION_FRAMES, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %8
  %42 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %8
  br label %47

44:                                               ; preds = %1
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %43
  ret void
}

declare dso_local %struct.TYPE_9__* @ASE_GetCurrentMesh(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @VERBOSE(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ASE_ParseBracedBlock(i32) #1

declare dso_local i32 @Error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
