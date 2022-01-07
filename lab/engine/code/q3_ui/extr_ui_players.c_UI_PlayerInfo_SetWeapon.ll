; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_players.c_UI_PlayerInfo_SetWeapon.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_players.c_UI_PlayerInfo_SetWeapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i8**, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i8* }

@MAX_QPATH = common dso_local global i32 0, align 4
@WP_NONE = common dso_local global i32 0, align 4
@bg_itemlist = common dso_local global %struct.TYPE_6__* null, align 8
@IT_WEAPON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"_barrel.md3\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"_flash.md3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @UI_PlayerInfo_SetWeapon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_PlayerInfo_SetWeapon(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @MAX_QPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %16

16:                                               ; preds = %80, %78, %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 5
  store i8* null, i8** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  store i8* null, i8** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i8* null, i8** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @WP_NONE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %173

30:                                               ; preds = %16
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bg_itemlist, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 1
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %5, align 8
  br label %33

33:                                               ; preds = %53, %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IT_WEAPON, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %53

45:                                               ; preds = %38
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %56

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %44
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 1
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %5, align 8
  br label %33

56:                                               ; preds = %51, %33
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @trap_R_RegisterModel(i8* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %61, %56
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  %73 = load i8*, i8** %72, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 132
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @WP_NONE, align 4
  store i32 %79, i32* %4, align 4
  br label %16

80:                                               ; preds = %75
  store i32 132, i32* %4, align 4
  br label %16

81:                                               ; preds = %70
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 132
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 136
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, 137
  br i1 %89, label %90, label %103

90:                                               ; preds = %87, %84, %81
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = trunc i64 %10 to i32
  %97 = call i32 @COM_StripExtension(i8* %95, i8* %12, i32 %96)
  %98 = trunc i64 %10 to i32
  %99 = call i32 @Q_strcat(i8* %12, i32 %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %100 = call i8* @trap_R_RegisterModel(i8* %12)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %90, %87
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  %108 = load i8*, i8** %107, align 8
  %109 = trunc i64 %10 to i32
  %110 = call i32 @COM_StripExtension(i8* %108, i8* %12, i32 %109)
  %111 = trunc i64 %10 to i32
  %112 = call i32 @Q_strcat(i8* %12, i32 %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %113 = call i8* @trap_R_RegisterModel(i8* %12)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* %4, align 4
  switch i32 %116, label %167 [
    i32 136, label %117
    i32 132, label %122
    i32 128, label %127
    i32 134, label %132
    i32 129, label %137
    i32 133, label %142
    i32 130, label %147
    i32 131, label %152
    i32 137, label %157
    i32 135, label %162
  ]

117:                                              ; preds = %103
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @MAKERGB(i32 %120, i32 0, i32 0, i32 1)
  br label %172

122:                                              ; preds = %103
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @MAKERGB(i32 %125, i32 1, i32 1, i32 0)
  br label %172

127:                                              ; preds = %103
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @MAKERGB(i32 %130, i32 1, i32 1, i32 0)
  br label %172

132:                                              ; preds = %103
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @MAKERGB(i32 %135, i32 1, i32 0, i32 0)
  br label %172

137:                                              ; preds = %103
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @MAKERGB(i32 %140, i32 1, i32 0, i32 0)
  br label %172

142:                                              ; preds = %103
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @MAKERGB(i32 %145, i32 0, i32 0, i32 1)
  br label %172

147:                                              ; preds = %103
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @MAKERGB(i32 %150, i32 1, i32 0, i32 0)
  br label %172

152:                                              ; preds = %103
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @MAKERGB(i32 %155, i32 0, i32 0, i32 1)
  br label %172

157:                                              ; preds = %103
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @MAKERGB(i32 %160, i32 1, i32 0, i32 1)
  br label %172

162:                                              ; preds = %103
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @MAKERGB(i32 %165, i32 0, i32 0, i32 1)
  br label %172

167:                                              ; preds = %103
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @MAKERGB(i32 %170, i32 1, i32 1, i32 1)
  br label %172

172:                                              ; preds = %167, %162, %157, %152, %147, %142, %137, %132, %127, %122, %117
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %172, %29
  %174 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %8, align 4
  switch i32 %175, label %177 [
    i32 0, label %176
    i32 1, label %176
  ]

176:                                              ; preds = %173, %173
  ret void

177:                                              ; preds = %173
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @trap_R_RegisterModel(i8*) #2

declare dso_local i32 @COM_StripExtension(i8*, i8*, i32) #2

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #2

declare dso_local i32 @MAKERGB(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
