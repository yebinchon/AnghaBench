; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_misc.c_TeleportPlayer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_misc.c_TeleportPlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { double*, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { double* }
%struct.TYPE_14__ = type { i32 }

@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@EV_PLAYER_TELEPORT_OUT = common dso_local global i32 0, align 4
@EV_PLAYER_TELEPORT_IN = common dso_local global i32 0, align 4
@PMF_TIME_KNOCKBACK = common dso_local global i32 0, align 4
@EF_TELEPORT_BIT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TeleportPlayer(%struct.TYPE_18__* %0, double* %1, double* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %9 = load double*, double** %6, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  %11 = load double, double* %10, align 8
  %12 = fcmp ogt double %11, 9.999990e+05
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TEAM_SPECTATOR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load double*, double** %27, align 8
  %29 = load i32, i32* @EV_PLAYER_TELEPORT_OUT, align 4
  %30 = call %struct.TYPE_18__* @G_TempEntity(double* %28, i32 %29)
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %7, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load double*, double** %5, align 8
  %39 = load i32, i32* @EV_PLAYER_TELEPORT_IN, align 4
  %40 = call %struct.TYPE_18__* @G_TempEntity(double* %38, i32 %39)
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %7, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  br label %48

48:                                               ; preds = %22, %3
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = call i32 @trap_UnlinkEntity(%struct.TYPE_18__* %49)
  %51 = load double*, double** %5, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load double*, double** %56, align 8
  %58 = call i32 @VectorCopy(double* %51, double* %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load double*, double** %63, align 8
  %65 = getelementptr inbounds double, double* %64, i64 2
  %66 = load double, double* %65, align 8
  %67 = fadd double %66, 1.000000e+00
  store double %67, double* %65, align 8
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %108, label %70

70:                                               ; preds = %48
  %71 = load double*, double** %6, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @AngleVectors(double* %71, i32 %77, i32* null, i32* null)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @VectorScale(i32 %84, i32 400, i32 %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  store i32 160, i32* %96, align 8
  %97 = load i32, i32* @PMF_TIME_KNOCKBACK, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %97
  store i32 %104, i32* %102, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = load double*, double** %6, align 8
  %107 = call i32 @SetClientViewAngle(%struct.TYPE_18__* %105, double* %106)
  br label %108

108:                                              ; preds = %70, %48
  %109 = load i32, i32* @EF_TELEPORT_BIT, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %115, %109
  store i32 %116, i32* %114, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TEAM_SPECTATOR, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %108
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = call i32 @G_KillBox(%struct.TYPE_18__* %126)
  br label %128

128:                                              ; preds = %125, %108
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  %135 = load i32, i32* @qtrue, align 4
  %136 = call i32 @BG_PlayerStateToEntityState(%struct.TYPE_13__* %132, %struct.TYPE_14__* %134, i32 %135)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load double*, double** %141, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load double*, double** %145, align 8
  %147 = call i32 @VectorCopy(double* %142, double* %146)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @TEAM_SPECTATOR, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %128
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %158 = call i32 @trap_LinkEntity(%struct.TYPE_18__* %157)
  br label %159

159:                                              ; preds = %156, %128
  ret void
}

declare dso_local %struct.TYPE_18__* @G_TempEntity(double*, i32) #1

declare dso_local i32 @trap_UnlinkEntity(%struct.TYPE_18__*) #1

declare dso_local i32 @VectorCopy(double*, double*) #1

declare dso_local i32 @AngleVectors(double*, i32, i32*, i32*) #1

declare dso_local i32 @VectorScale(i32, i32, i32) #1

declare dso_local i32 @SetClientViewAngle(%struct.TYPE_18__*, double*) #1

declare dso_local i32 @G_KillBox(%struct.TYPE_18__*) #1

declare dso_local i32 @BG_PlayerStateToEntityState(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
