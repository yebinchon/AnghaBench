; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SV_AddServerCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SV_AddServerCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i8** }

@CS_PRIMED = common dso_local global i64 0, align 8
@MAX_RELIABLE_COMMANDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"===== pending server commands =====\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cmd %5d: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Server command overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_AddServerCommand(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CS_PRIMED, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %78

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %13
  %29 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %53, %28
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sle i32 %35, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %44, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %51)
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %34

56:                                               ; preds = %34
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %57, i8* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = call i32 @SV_DropClient(%struct.TYPE_4__* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %78

62:                                               ; preds = %13
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %65, %67
  store i32 %68, i32* %5, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @Q_strncpyz(i8* %75, i8* %76, i32 8)
  br label %78

78:                                               ; preds = %62, %56, %12
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
