; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_event.c_CG_Obituary.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_event.c_CG_Obituary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@cg_showObituary = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CG_Obituary: target out of range\00", align 1
@cgs = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ENTITYNUM_WORLD = common dso_local global i32 0, align 4
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@S_COLOR_WHITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"suicides\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cratered\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"was squished\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"sank like a rock\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"melted\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"does a back flip into the lava\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"saw the light\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"was in the wrong place\00", align 1
@GENDER_FEMALE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"tripped on her own grenade\00", align 1
@GENDER_NEUTER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"tripped on its own grenade\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"tripped on his own grenade\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"blew herself up\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"blew itself up\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"blew himself up\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"melted herself\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"melted itself\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"melted himself\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"should have used a smaller gun\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"killed herself\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"killed itself\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"killed himself\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%s %s.\0A\00", align 1
@cg = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [31 x i8] c"You tagged %s\0A%s place with %i\00", align 1
@PERS_RANK = common dso_local global i64 0, align 8
@PERS_SCORE = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [14 x i8] c"You tagged %s\00", align 1
@SCREEN_HEIGHT = common dso_local global double 0.000000e+00, align 8
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"noname\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"was caught by\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"was pummeled by\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"was machinegunned by\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"was gunned down by\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"ate\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"'s grenade\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"was shredded by\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"'s shrapnel\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"'s rocket\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"almost dodged\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"was melted by\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"'s plasmagun\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"was railed by\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"was electrocuted by\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"was blasted by\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"'s BFG\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"tried to invade\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"'s personal space\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"was killed by\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"%s %s %s%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"%s died.\0A\00", align 1
@cg_cameraOrbit = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@cg_singlePlayerActive = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @CG_Obituary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_Obituary(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_showObituary, i32 0, i32 0), align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %251

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MAX_CLIENTS, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %27
  %35 = call i32 @CG_Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 1), align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 %39
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %13, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MAX_CLIENTS, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %36
  %48 = load i32, i32* @ENTITYNUM_WORLD, align 4
  store i32 %48, i32* %5, align 4
  store i8* null, i8** %9, align 8
  br label %55

49:                                               ; preds = %43
  %50 = load i64, i64* @CS_PLAYERS, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i8* @CG_ConfigString(i64 %53)
  store i8* %54, i8** %9, align 8
  br label %55

55:                                               ; preds = %49, %47
  %56 = load i64, i64* @CS_PLAYERS, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i8* @CG_ConfigString(i64 %59)
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  br label %251

64:                                               ; preds = %55
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %66 = load i8*, i8** %8, align 8
  %67 = call i8* @Info_ValueForKey(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @Q_strncpyz(i8* %65, i8* %67, i32 30)
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %70 = load i32, i32* @S_COLOR_WHITE, align 4
  %71 = call i32 @strcat(i8* %69, i32 %70)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %72 = load i32, i32* %3, align 4
  switch i32 %72, label %81 [
    i32 132, label %73
    i32 151, label %74
    i32 152, label %75
    i32 128, label %76
    i32 133, label %77
    i32 144, label %78
    i32 131, label %79
    i32 129, label %80
  ]

73:                                               ; preds = %64
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %82

74:                                               ; preds = %64
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %82

75:                                               ; preds = %64
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %82

76:                                               ; preds = %64
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %82

77:                                               ; preds = %64
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %82

78:                                               ; preds = %64
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %82

79:                                               ; preds = %64
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %82

80:                                               ; preds = %64
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %82

81:                                               ; preds = %64
  store i8* null, i8** %6, align 8
  br label %82

82:                                               ; preds = %81, %80, %79, %78, %77, %76, %75, %74, %73
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %145

86:                                               ; preds = %82
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %3, align 4
  switch i32 %90, label %131 [
    i32 147, label %91
    i32 135, label %104
    i32 139, label %117
    i32 154, label %130
  ]

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @GENDER_FEMALE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %103

96:                                               ; preds = %91
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @GENDER_NEUTER, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %102

101:                                              ; preds = %96
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %102

102:                                              ; preds = %101, %100
  br label %103

103:                                              ; preds = %102, %95
  br label %144

104:                                              ; preds = %86
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @GENDER_FEMALE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %116

109:                                              ; preds = %104
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @GENDER_NEUTER, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  br label %115

114:                                              ; preds = %109
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %115

115:                                              ; preds = %114, %113
  br label %116

116:                                              ; preds = %115, %108
  br label %144

117:                                              ; preds = %86
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @GENDER_FEMALE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  br label %129

122:                                              ; preds = %117
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @GENDER_NEUTER, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %6, align 8
  br label %128

127:                                              ; preds = %122
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8** %6, align 8
  br label %128

128:                                              ; preds = %127, %126
  br label %129

129:                                              ; preds = %128, %121
  br label %144

130:                                              ; preds = %86
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8** %6, align 8
  br label %144

131:                                              ; preds = %86
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @GENDER_FEMALE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8** %6, align 8
  br label %143

136:                                              ; preds = %131
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @GENDER_NEUTER, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8** %6, align 8
  br label %142

141:                                              ; preds = %136
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8** %6, align 8
  br label %142

142:                                              ; preds = %141, %140
  br label %143

143:                                              ; preds = %142, %135
  br label %144

144:                                              ; preds = %143, %130, %129, %116, %103
  br label %145

145:                                              ; preds = %144, %82
  %146 = load i8*, i8** %6, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %150 = load i8*, i8** %6, align 8
  %151 = call i32 (i8*, i8*, ...) @CG_Printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* %149, i8* %150)
  br label %251

152:                                              ; preds = %145
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 1), align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %153, %157
  br i1 %158, label %159, label %191

159:                                              ; preds = %152
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 0), align 8
  %161 = load i64, i64* @GT_TEAM, align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %182

163:                                              ; preds = %159
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 1), align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i64*, i64** %167, align 8
  %169 = load i64, i64* @PERS_RANK, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  %173 = call i32 @CG_PlaceString(i64 %172)
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 1), align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load i64*, i64** %176, align 8
  %178 = load i64, i64* @PERS_SCORE, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i8* %164, i32 %173, i64 %180)
  store i8* %181, i8** %14, align 8
  br label %185

182:                                              ; preds = %159
  %183 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %184 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* %183)
  store i8* %184, i8** %14, align 8
  br label %185

185:                                              ; preds = %182, %163
  %186 = load i8*, i8** %14, align 8
  %187 = load double, double* @SCREEN_HEIGHT, align 8
  %188 = fmul double %187, 3.000000e-01
  %189 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %190 = call i32 @CG_CenterPrint(i8* %186, double %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %152
  %192 = load i8*, i8** %9, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* @ENTITYNUM_WORLD, align 4
  store i32 %195, i32* %5, align 4
  %196 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %197 = call i32 @strcpy(i8* %196, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %217

198:                                              ; preds = %191
  %199 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %200 = load i8*, i8** %9, align 8
  %201 = call i8* @Info_ValueForKey(i8* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %202 = call i32 @Q_strncpyz(i8* %199, i8* %201, i32 30)
  %203 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %204 = load i32, i32* @S_COLOR_WHITE, align 4
  %205 = call i32 @strcat(i8* %203, i32 %204)
  %206 = load i32, i32* %4, align 4
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 1), align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %206, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %198
  %213 = load i8*, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %214 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %215 = call i32 @Q_strncpyz(i8* %213, i8* %214, i32 8)
  br label %216

216:                                              ; preds = %212, %198
  br label %217

217:                                              ; preds = %216, %194
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* @ENTITYNUM_WORLD, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %248

221:                                              ; preds = %217
  %222 = load i32, i32* %3, align 4
  switch i32 %222, label %237 [
    i32 149, label %223
    i32 150, label %224
    i32 142, label %225
    i32 134, label %226
    i32 148, label %227
    i32 147, label %228
    i32 136, label %229
    i32 135, label %230
    i32 140, label %231
    i32 139, label %232
    i32 137, label %233
    i32 143, label %234
    i32 155, label %235
    i32 154, label %235
    i32 130, label %236
  ]

223:                                              ; preds = %221
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8** %6, align 8
  br label %238

224:                                              ; preds = %221
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8** %6, align 8
  br label %238

225:                                              ; preds = %221
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8** %6, align 8
  br label %238

226:                                              ; preds = %221
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i8** %6, align 8
  br label %238

227:                                              ; preds = %221
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8** %7, align 8
  br label %238

228:                                              ; preds = %221
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8** %7, align 8
  br label %238

229:                                              ; preds = %221
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %7, align 8
  br label %238

230:                                              ; preds = %221
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %7, align 8
  br label %238

231:                                              ; preds = %221
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8** %7, align 8
  br label %238

232:                                              ; preds = %221
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8** %7, align 8
  br label %238

233:                                              ; preds = %221
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i8** %6, align 8
  br label %238

234:                                              ; preds = %221
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i8** %6, align 8
  br label %238

235:                                              ; preds = %221, %221
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8** %7, align 8
  br label %238

236:                                              ; preds = %221
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i8** %7, align 8
  br label %238

237:                                              ; preds = %221
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8** %6, align 8
  br label %238

238:                                              ; preds = %237, %236, %235, %234, %233, %232, %231, %230, %229, %228, %227, %226, %225, %224, %223
  %239 = load i8*, i8** %6, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %243 = load i8*, i8** %6, align 8
  %244 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %245 = load i8*, i8** %7, align 8
  %246 = call i32 (i8*, i8*, ...) @CG_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* %242, i8* %243, i8* %244, i8* %245)
  br label %251

247:                                              ; preds = %238
  br label %248

248:                                              ; preds = %247, %217
  %249 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %250 = call i32 (i8*, i8*, ...) @CG_Printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i8* %249)
  br label %251

251:                                              ; preds = %248, %241, %148, %63, %26
  ret void
}

declare dso_local i32 @CG_Error(i8*) #1

declare dso_local i8* @CG_ConfigString(i64) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i32) #1

declare dso_local i32 @CG_Printf(i8*, i8*, ...) #1

declare dso_local i8* @va(i8*, i8*, ...) #1

declare dso_local i32 @CG_PlaceString(i64) #1

declare dso_local i32 @CG_CenterPrint(i8*, double, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
