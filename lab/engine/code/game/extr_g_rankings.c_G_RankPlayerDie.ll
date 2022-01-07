; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_rankings.c_G_RankPlayerDie.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_rankings.c_G_RankPlayerDie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENTITYNUM_WORLD = common dso_local global i32 0, align 4
@QGR_KEY_HAZARD_DEATH = common dso_local global i32 0, align 4
@QGR_KEY_WATER = common dso_local global i32 0, align 4
@QGR_KEY_SLIME = common dso_local global i32 0, align 4
@QGR_KEY_LAVA = common dso_local global i32 0, align 4
@QGR_KEY_CRUSH = common dso_local global i32 0, align 4
@QGR_KEY_TELEFRAG = common dso_local global i32 0, align 4
@QGR_KEY_FALLING = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_CMD = common dso_local global i32 0, align 4
@QGR_KEY_TRIGGER_HURT = common dso_local global i32 0, align 4
@QGR_KEY_HAZARD_MISC = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_GAUNTLET = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_MACHINEGUN = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_SHOTGUN = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_GRENADE = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_ROCKET = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_PLASMA = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_RAILGUN = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_LIGHTNING = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_BFG = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_GRAPPLE = common dso_local global i32 0, align 4
@QGR_KEY_SUICIDE_UNKNOWN = common dso_local global i32 0, align 4
@QGR_KEY_FRAG = common dso_local global i32 0, align 4
@QGR_KEY_FRAG_GAUNTLET = common dso_local global i32 0, align 4
@QGR_KEY_FRAG_MACHINEGUN = common dso_local global i32 0, align 4
@QGR_KEY_FRAG_SHOTGUN = common dso_local global i32 0, align 4
@QGR_KEY_FRAG_GRENADE = common dso_local global i32 0, align 4
@QGR_KEY_FRAG_ROCKET = common dso_local global i32 0, align 4
@QGR_KEY_FRAG_PLASMA = common dso_local global i32 0, align 4
@QGR_KEY_FRAG_RAILGUN = common dso_local global i32 0, align 4
@QGR_KEY_FRAG_LIGHTNING = common dso_local global i32 0, align 4
@QGR_KEY_FRAG_BFG = common dso_local global i32 0, align 4
@QGR_KEY_FRAG_GRAPPLE = common dso_local global i32 0, align 4
@QGR_KEY_FRAG_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RankPlayerDie(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %201

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ENTITYNUM_WORLD, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @QGR_KEY_HAZARD_DEATH, align 4
  %21 = call i32 @trap_RankReportInt(i32 %18, i32 %19, i32 %20, i32 1, i32 1)
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %63 [
    i32 128, label %23
    i32 132, label %28
    i32 141, label %33
    i32 147, label %38
    i32 130, label %43
    i32 146, label %48
    i32 131, label %53
    i32 129, label %58
  ]

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @QGR_KEY_WATER, align 4
  %27 = call i32 @trap_RankReportInt(i32 %24, i32 %25, i32 %26, i32 1, i32 1)
  br label %68

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @QGR_KEY_SLIME, align 4
  %32 = call i32 @trap_RankReportInt(i32 %29, i32 %30, i32 %31, i32 1, i32 1)
  br label %68

33:                                               ; preds = %16
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @QGR_KEY_LAVA, align 4
  %37 = call i32 @trap_RankReportInt(i32 %34, i32 %35, i32 %36, i32 1, i32 1)
  br label %68

38:                                               ; preds = %16
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @QGR_KEY_CRUSH, align 4
  %42 = call i32 @trap_RankReportInt(i32 %39, i32 %40, i32 %41, i32 1, i32 1)
  br label %68

43:                                               ; preds = %16
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @QGR_KEY_TELEFRAG, align 4
  %47 = call i32 @trap_RankReportInt(i32 %44, i32 %45, i32 %46, i32 1, i32 1)
  br label %68

48:                                               ; preds = %16
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @QGR_KEY_FALLING, align 4
  %52 = call i32 @trap_RankReportInt(i32 %49, i32 %50, i32 %51, i32 1, i32 1)
  br label %68

53:                                               ; preds = %16
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @QGR_KEY_SUICIDE_CMD, align 4
  %57 = call i32 @trap_RankReportInt(i32 %54, i32 %55, i32 %56, i32 1, i32 1)
  br label %68

58:                                               ; preds = %16
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @QGR_KEY_TRIGGER_HURT, align 4
  %62 = call i32 @trap_RankReportInt(i32 %59, i32 %60, i32 %61, i32 1, i32 1)
  br label %68

63:                                               ; preds = %16
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @QGR_KEY_HAZARD_MISC, align 4
  %67 = call i32 @trap_RankReportInt(i32 %64, i32 %65, i32 %66, i32 1, i32 1)
  br label %68

68:                                               ; preds = %63, %58, %53, %48, %43, %38, %33, %28, %23
  br label %201

69:                                               ; preds = %12
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %136

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @QGR_KEY_SUICIDE, align 4
  %78 = call i32 @trap_RankReportInt(i32 %75, i32 %76, i32 %77, i32 1, i32 1)
  %79 = load i32, i32* %6, align 4
  switch i32 %79, label %130 [
    i32 145, label %80
    i32 139, label %85
    i32 133, label %90
    i32 143, label %95
    i32 142, label %95
    i32 135, label %100
    i32 134, label %100
    i32 138, label %105
    i32 137, label %105
    i32 136, label %110
    i32 140, label %115
    i32 149, label %120
    i32 148, label %120
    i32 144, label %125
  ]

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @QGR_KEY_SUICIDE_GAUNTLET, align 4
  %84 = call i32 @trap_RankReportInt(i32 %81, i32 %82, i32 %83, i32 1, i32 1)
  br label %135

85:                                               ; preds = %73
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @QGR_KEY_SUICIDE_MACHINEGUN, align 4
  %89 = call i32 @trap_RankReportInt(i32 %86, i32 %87, i32 %88, i32 1, i32 1)
  br label %135

90:                                               ; preds = %73
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @QGR_KEY_SUICIDE_SHOTGUN, align 4
  %94 = call i32 @trap_RankReportInt(i32 %91, i32 %92, i32 %93, i32 1, i32 1)
  br label %135

95:                                               ; preds = %73, %73
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @QGR_KEY_SUICIDE_GRENADE, align 4
  %99 = call i32 @trap_RankReportInt(i32 %96, i32 %97, i32 %98, i32 1, i32 1)
  br label %135

100:                                              ; preds = %73, %73
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @QGR_KEY_SUICIDE_ROCKET, align 4
  %104 = call i32 @trap_RankReportInt(i32 %101, i32 %102, i32 %103, i32 1, i32 1)
  br label %135

105:                                              ; preds = %73, %73
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @QGR_KEY_SUICIDE_PLASMA, align 4
  %109 = call i32 @trap_RankReportInt(i32 %106, i32 %107, i32 %108, i32 1, i32 1)
  br label %135

110:                                              ; preds = %73
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @QGR_KEY_SUICIDE_RAILGUN, align 4
  %114 = call i32 @trap_RankReportInt(i32 %111, i32 %112, i32 %113, i32 1, i32 1)
  br label %135

115:                                              ; preds = %73
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @QGR_KEY_SUICIDE_LIGHTNING, align 4
  %119 = call i32 @trap_RankReportInt(i32 %116, i32 %117, i32 %118, i32 1, i32 1)
  br label %135

120:                                              ; preds = %73, %73
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @QGR_KEY_SUICIDE_BFG, align 4
  %124 = call i32 @trap_RankReportInt(i32 %121, i32 %122, i32 %123, i32 1, i32 1)
  br label %135

125:                                              ; preds = %73
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @QGR_KEY_SUICIDE_GRAPPLE, align 4
  %129 = call i32 @trap_RankReportInt(i32 %126, i32 %127, i32 %128, i32 1, i32 1)
  br label %135

130:                                              ; preds = %73
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @QGR_KEY_SUICIDE_UNKNOWN, align 4
  %134 = call i32 @trap_RankReportInt(i32 %131, i32 %132, i32 %133, i32 1, i32 1)
  br label %135

135:                                              ; preds = %130, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80
  br label %200

136:                                              ; preds = %69
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %4, align 4
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @QGR_KEY_FRAG, align 4
  %142 = call i32 @trap_RankReportInt(i32 %139, i32 %140, i32 %141, i32 1, i32 1)
  %143 = load i32, i32* %6, align 4
  switch i32 %143, label %194 [
    i32 145, label %144
    i32 139, label %149
    i32 133, label %154
    i32 143, label %159
    i32 142, label %159
    i32 135, label %164
    i32 134, label %164
    i32 138, label %169
    i32 137, label %169
    i32 136, label %174
    i32 140, label %179
    i32 149, label %184
    i32 148, label %184
    i32 144, label %189
  ]

144:                                              ; preds = %136
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @QGR_KEY_FRAG_GAUNTLET, align 4
  %148 = call i32 @trap_RankReportInt(i32 %145, i32 %146, i32 %147, i32 1, i32 1)
  br label %199

149:                                              ; preds = %136
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @QGR_KEY_FRAG_MACHINEGUN, align 4
  %153 = call i32 @trap_RankReportInt(i32 %150, i32 %151, i32 %152, i32 1, i32 1)
  br label %199

154:                                              ; preds = %136
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @QGR_KEY_FRAG_SHOTGUN, align 4
  %158 = call i32 @trap_RankReportInt(i32 %155, i32 %156, i32 %157, i32 1, i32 1)
  br label %199

159:                                              ; preds = %136, %136
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @QGR_KEY_FRAG_GRENADE, align 4
  %163 = call i32 @trap_RankReportInt(i32 %160, i32 %161, i32 %162, i32 1, i32 1)
  br label %199

164:                                              ; preds = %136, %136
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @QGR_KEY_FRAG_ROCKET, align 4
  %168 = call i32 @trap_RankReportInt(i32 %165, i32 %166, i32 %167, i32 1, i32 1)
  br label %199

169:                                              ; preds = %136, %136
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @QGR_KEY_FRAG_PLASMA, align 4
  %173 = call i32 @trap_RankReportInt(i32 %170, i32 %171, i32 %172, i32 1, i32 1)
  br label %199

174:                                              ; preds = %136
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @QGR_KEY_FRAG_RAILGUN, align 4
  %178 = call i32 @trap_RankReportInt(i32 %175, i32 %176, i32 %177, i32 1, i32 1)
  br label %199

179:                                              ; preds = %136
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @QGR_KEY_FRAG_LIGHTNING, align 4
  %183 = call i32 @trap_RankReportInt(i32 %180, i32 %181, i32 %182, i32 1, i32 1)
  br label %199

184:                                              ; preds = %136, %136
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @QGR_KEY_FRAG_BFG, align 4
  %188 = call i32 @trap_RankReportInt(i32 %185, i32 %186, i32 %187, i32 1, i32 1)
  br label %199

189:                                              ; preds = %136
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @QGR_KEY_FRAG_GRAPPLE, align 4
  %193 = call i32 @trap_RankReportInt(i32 %190, i32 %191, i32 %192, i32 1, i32 1)
  br label %199

194:                                              ; preds = %136
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @QGR_KEY_FRAG_UNKNOWN, align 4
  %198 = call i32 @trap_RankReportInt(i32 %195, i32 %196, i32 %197, i32 1, i32 1)
  br label %199

199:                                              ; preds = %194, %189, %184, %179, %174, %169, %164, %159, %154, %149, %144
  br label %200

200:                                              ; preds = %199, %135
  br label %201

201:                                              ; preds = %11, %200, %68
  ret void
}

declare dso_local i32 @trap_RankReportInt(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
