; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_load_sort_win.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_load_sort_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__* }

@SORT_MAX_OPTS = common dso_local global i32 0, align 4
@SORT_WIN_H = common dso_local global i32 0, align 4
@SORT_WIN_W = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@sort_choices = common dso_local global i32** null, align 8
@SORT_BY_CUMTS = common dso_local global i64 0, align 8
@conf = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@SORT_BY_MAXTS = common dso_local global i64 0, align 8
@SORT_BY_AVGTS = common dso_local global i64 0, align 8
@SORT_BY_BW = common dso_local global i64 0, align 8
@SORT_BY_PROT = common dso_local global i64 0, align 8
@SORT_BY_MTHD = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SORT_MENU_H = common dso_local global i32 0, align 4
@SORT_MENU_W = common dso_local global i32 0, align 4
@SORT_MENU_Y = common dso_local global i32 0, align 4
@SORT_MENU_X = common dso_local global i32 0, align 4
@SORT_BY_HITS = common dso_local global i64 0, align 8
@MTRC_HITS_LBL = common dso_local global i32 0, align 4
@SORT_BY_VISITORS = common dso_local global i64 0, align 8
@MTRC_VISITORS_LBL = common dso_local global i32 0, align 4
@SORT_BY_DATA = common dso_local global i64 0, align 8
@MTRC_DATA_LBL = common dso_local global i32 0, align 4
@MTRC_BW_LBL = common dso_local global i32 0, align 4
@MTRC_AVGTS_LBL = common dso_local global i32 0, align 4
@MTRC_CUMTS_LBL = common dso_local global i32 0, align 4
@MTRC_MAXTS_LBL = common dso_local global i32 0, align 4
@MTRC_PROTOCOLS_LBL = common dso_local global i32 0, align 4
@MTRC_METHODS_LBL = common dso_local global i32 0, align 4
@SORTDLG_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@color_panel_header = common dso_local global i32 0, align 4
@SORTDLG_DESC = common dso_local global i32 0, align 4
@SORT_ASC = common dso_local global i64 0, align 8
@SORT_ASC_SEL = common dso_local global i32 0, align 4
@SORT_DESC_SEL = common dso_local global i32 0, align 4
@REQ_DOWN = common dso_local global i32 0, align 4
@REQ_UP = common dso_local global i32 0, align 4
@SORT_DESC = common dso_local global i64 0, align 8
@REQ_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Hits\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Visitors\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Tx. Amount\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Avg. T.S.\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Cum. T.S.\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Max. T.S.\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Protocol\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Method\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_sort_win(i32* %0, i64 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %23 = load i32, i32* @SORT_MAX_OPTS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %27 = load i32, i32* @SORT_WIN_H, align 4
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* @SORT_WIN_W, align 4
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = sub nsw i32 %29, 2
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* @stdscr, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @getmaxyx(i32 %31, i32 %32, i32 %33)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %115, %3
  %36 = load i32**, i32*** @sort_choices, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 -1, %43
  br i1 %44, label %45, label %118

45:                                               ; preds = %35
  %46 = load i32**, i32*** @sort_choices, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %21, align 8
  %55 = load i64, i64* @SORT_BY_CUMTS, align 8
  %56 = load i64, i64* %21, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @conf, i32 0, i32 3), align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  br label %115

62:                                               ; preds = %58, %45
  %63 = load i64, i64* @SORT_BY_MAXTS, align 8
  %64 = load i64, i64* %21, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @conf, i32 0, i32 3), align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %115

70:                                               ; preds = %66, %62
  %71 = load i64, i64* @SORT_BY_AVGTS, align 8
  %72 = load i64, i64* %21, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @conf, i32 0, i32 3), align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %115

78:                                               ; preds = %74, %70
  %79 = load i64, i64* @SORT_BY_BW, align 8
  %80 = load i64, i64* %21, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @conf, i32 0, i32 2), align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %115

86:                                               ; preds = %82, %78
  %87 = load i64, i64* @SORT_BY_PROT, align 8
  %88 = load i64, i64* %21, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @conf, i32 0, i32 1), align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  br label %115

94:                                               ; preds = %90, %86
  %95 = load i64, i64* @SORT_BY_MTHD, align 8
  %96 = load i64, i64* %21, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @conf, i32 0, i32 0), align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %115

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %21, align 8
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i64, i64* %26, i64 %111
  store i64 %108, i64* %112, align 8
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %107, %101, %93, %85, %77, %69, %61
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %35

118:                                              ; preds = %35
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %18, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sdiv i32 %123, 2
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %19, align 4
  %127 = sub nsw i32 %125, %126
  %128 = sdiv i32 %127, 2
  %129 = call i32* @newwin(i32 %119, i32 %120, i32 %124, i32 %128)
  store i32* %129, i32** %8, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* @TRUE, align 4
  %132 = call i32 @keypad(i32* %130, i32 %131)
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @wborder(i32* %133, i8 signext 124, i8 signext 124, i8 signext 45, i8 signext 45, i8 signext 43, i8 signext 43, i8 signext 43, i8 signext 43)
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* @SORT_MENU_H, align 4
  %137 = load i32, i32* @SORT_MENU_W, align 4
  %138 = load i32, i32* @SORT_MENU_Y, align 4
  %139 = load i32, i32* @SORT_MENU_X, align 4
  %140 = call %struct.TYPE_13__* @new_gmenu(i32* %135, i32 %136, i32 %137, i32 %138, i32 %139)
  store %struct.TYPE_13__* %140, %struct.TYPE_13__** %7, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  %146 = load i32, i32* %15, align 4
  %147 = call i64 @xcalloc(i32 %146, i32 32)
  %148 = inttoptr i64 %147 to %struct.TYPE_13__*
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 4
  store %struct.TYPE_13__* %148, %struct.TYPE_13__** %150, align 8
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %463, %118
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %466

155:                                              ; preds = %151
  %156 = load i32**, i32*** @sort_choices, align 8
  %157 = load i64, i64* %5, align 8
  %158 = getelementptr inbounds i32*, i32** %156, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %26, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %22, align 8
  %167 = load i64, i64* @SORT_BY_HITS, align 8
  %168 = load i64, i64* %22, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %198

170:                                              ; preds = %155
  %171 = load i32, i32* @MTRC_HITS_LBL, align 4
  %172 = call i8* @alloc_string(i32 %171)
  %173 = bitcast i8* %172 to %struct.TYPE_13__*
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 5
  store %struct.TYPE_13__* %173, %struct.TYPE_13__** %180, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @SORT_BY_HITS, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %170
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  store i32 1, i32* %193, align 8
  %194 = load i32, i32* %13, align 4
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %186, %170
  br label %462

198:                                              ; preds = %155
  %199 = load i64, i64* @SORT_BY_VISITORS, align 8
  %200 = load i64, i64* %22, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %230

202:                                              ; preds = %198
  %203 = load i32, i32* @MTRC_VISITORS_LBL, align 4
  %204 = call i8* @alloc_string(i32 %203)
  %205 = bitcast i8* %204 to %struct.TYPE_13__*
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 5
  store %struct.TYPE_13__* %205, %struct.TYPE_13__** %212, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @SORT_BY_VISITORS, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %202
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %220, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 2
  store i32 1, i32* %225, align 8
  %226 = load i32, i32* %13, align 4
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %218, %202
  br label %461

230:                                              ; preds = %198
  %231 = load i64, i64* @SORT_BY_DATA, align 8
  %232 = load i64, i64* %22, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %262

234:                                              ; preds = %230
  %235 = load i32, i32* @MTRC_DATA_LBL, align 4
  %236 = call i8* @alloc_string(i32 %235)
  %237 = bitcast i8* %236 to %struct.TYPE_13__*
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 4
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 5
  store %struct.TYPE_13__* %237, %struct.TYPE_13__** %244, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @SORT_BY_DATA, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %261

250:                                              ; preds = %234
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %252, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 2
  store i32 1, i32* %257, align 8
  %258 = load i32, i32* %13, align 4
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 4
  br label %261

261:                                              ; preds = %250, %234
  br label %460

262:                                              ; preds = %230
  %263 = load i64, i64* @SORT_BY_BW, align 8
  %264 = load i64, i64* %22, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %294

266:                                              ; preds = %262
  %267 = load i32, i32* @MTRC_BW_LBL, align 4
  %268 = call i8* @alloc_string(i32 %267)
  %269 = bitcast i8* %268 to %struct.TYPE_13__*
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %271, align 8
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 5
  store %struct.TYPE_13__* %269, %struct.TYPE_13__** %276, align 8
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @SORT_BY_BW, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %293

282:                                              ; preds = %266
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 4
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %284, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 2
  store i32 1, i32* %289, align 8
  %290 = load i32, i32* %13, align 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 3
  store i32 %290, i32* %292, align 4
  br label %293

293:                                              ; preds = %282, %266
  br label %459

294:                                              ; preds = %262
  %295 = load i64, i64* @SORT_BY_AVGTS, align 8
  %296 = load i64, i64* %22, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %326

298:                                              ; preds = %294
  %299 = load i32, i32* @MTRC_AVGTS_LBL, align 4
  %300 = call i8* @alloc_string(i32 %299)
  %301 = bitcast i8* %300 to %struct.TYPE_13__*
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 4
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %303, align 8
  %305 = load i32, i32* %13, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 5
  store %struct.TYPE_13__* %301, %struct.TYPE_13__** %308, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @SORT_BY_AVGTS, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %325

314:                                              ; preds = %298
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 4
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %316, align 8
  %318 = load i32, i32* %13, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 2
  store i32 1, i32* %321, align 8
  %322 = load i32, i32* %13, align 4
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 3
  store i32 %322, i32* %324, align 4
  br label %325

325:                                              ; preds = %314, %298
  br label %458

326:                                              ; preds = %294
  %327 = load i64, i64* @SORT_BY_CUMTS, align 8
  %328 = load i64, i64* %22, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %358

330:                                              ; preds = %326
  %331 = load i32, i32* @MTRC_CUMTS_LBL, align 4
  %332 = call i8* @alloc_string(i32 %331)
  %333 = bitcast i8* %332 to %struct.TYPE_13__*
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 4
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %335, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 5
  store %struct.TYPE_13__* %333, %struct.TYPE_13__** %340, align 8
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @SORT_BY_CUMTS, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %357

346:                                              ; preds = %330
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 4
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %348, align 8
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 2
  store i32 1, i32* %353, align 8
  %354 = load i32, i32* %13, align 4
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 3
  store i32 %354, i32* %356, align 4
  br label %357

357:                                              ; preds = %346, %330
  br label %457

358:                                              ; preds = %326
  %359 = load i64, i64* @SORT_BY_MAXTS, align 8
  %360 = load i64, i64* %22, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %390

362:                                              ; preds = %358
  %363 = load i32, i32* @MTRC_MAXTS_LBL, align 4
  %364 = call i8* @alloc_string(i32 %363)
  %365 = bitcast i8* %364 to %struct.TYPE_13__*
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 4
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %367, align 8
  %369 = load i32, i32* %13, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 5
  store %struct.TYPE_13__* %365, %struct.TYPE_13__** %372, align 8
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @SORT_BY_MAXTS, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %389

378:                                              ; preds = %362
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 4
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %380, align 8
  %382 = load i32, i32* %13, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 2
  store i32 1, i32* %385, align 8
  %386 = load i32, i32* %13, align 4
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 3
  store i32 %386, i32* %388, align 4
  br label %389

389:                                              ; preds = %378, %362
  br label %456

390:                                              ; preds = %358
  %391 = load i64, i64* @SORT_BY_PROT, align 8
  %392 = load i64, i64* %22, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %394, label %422

394:                                              ; preds = %390
  %395 = load i32, i32* @MTRC_PROTOCOLS_LBL, align 4
  %396 = call i8* @alloc_string(i32 %395)
  %397 = bitcast i8* %396 to %struct.TYPE_13__*
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 4
  %400 = load %struct.TYPE_13__*, %struct.TYPE_13__** %399, align 8
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 5
  store %struct.TYPE_13__* %397, %struct.TYPE_13__** %404, align 8
  %405 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @SORT_BY_PROT, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %410, label %421

410:                                              ; preds = %394
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 4
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %412, align 8
  %414 = load i32, i32* %13, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 2
  store i32 1, i32* %417, align 8
  %418 = load i32, i32* %13, align 4
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 3
  store i32 %418, i32* %420, align 4
  br label %421

421:                                              ; preds = %410, %394
  br label %455

422:                                              ; preds = %390
  %423 = load i64, i64* @SORT_BY_MTHD, align 8
  %424 = load i64, i64* %22, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %454

426:                                              ; preds = %422
  %427 = load i32, i32* @MTRC_METHODS_LBL, align 4
  %428 = call i8* @alloc_string(i32 %427)
  %429 = bitcast i8* %428 to %struct.TYPE_13__*
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 4
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %431, align 8
  %433 = load i32, i32* %13, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 5
  store %struct.TYPE_13__* %429, %struct.TYPE_13__** %436, align 8
  %437 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @SORT_BY_MTHD, align 8
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %442, label %453

442:                                              ; preds = %426
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %443, i32 0, i32 4
  %445 = load %struct.TYPE_13__*, %struct.TYPE_13__** %444, align 8
  %446 = load i32, i32* %13, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %448, i32 0, i32 2
  store i32 1, i32* %449, align 8
  %450 = load i32, i32* %13, align 4
  %451 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %451, i32 0, i32 3
  store i32 %450, i32* %452, align 4
  br label %453

453:                                              ; preds = %442, %426
  br label %454

454:                                              ; preds = %453, %422
  br label %455

455:                                              ; preds = %454, %421
  br label %456

456:                                              ; preds = %455, %389
  br label %457

457:                                              ; preds = %456, %357
  br label %458

458:                                              ; preds = %457, %325
  br label %459

459:                                              ; preds = %458, %293
  br label %460

460:                                              ; preds = %459, %261
  br label %461

461:                                              ; preds = %460, %229
  br label %462

462:                                              ; preds = %461, %197
  br label %463

463:                                              ; preds = %462
  %464 = load i32, i32* %13, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %13, align 4
  br label %151

466:                                              ; preds = %151
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %468 = call i32 @post_gmenu(%struct.TYPE_13__* %467)
  %469 = load i32*, i32** %8, align 8
  %470 = load i32, i32* @SORTDLG_HEAD, align 4
  %471 = load i32, i32* %20, align 4
  %472 = load i32, i32* @color_panel_header, align 4
  %473 = call i32 @draw_header(i32* %469, i32 %470, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, i32 1, i32 %471, i32 %472)
  %474 = load i32*, i32** %8, align 8
  %475 = load i32, i32* @SORTDLG_DESC, align 4
  %476 = sext i32 %475 to i64
  %477 = inttoptr i64 %476 to i8*
  %478 = call i32 (i32*, i32, i32, i8*, ...) @mvwprintw(i32* %474, i32 2, i32 2, i8* %477)
  %479 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 1
  %481 = load i64, i64* %480, align 8
  %482 = load i64, i64* @SORT_ASC, align 8
  %483 = icmp eq i64 %481, %482
  br i1 %483, label %484, label %490

484:                                              ; preds = %466
  %485 = load i32*, i32** %8, align 8
  %486 = load i32, i32* @SORT_WIN_H, align 4
  %487 = sub nsw i32 %486, 2
  %488 = load i32, i32* @SORT_ASC_SEL, align 4
  %489 = call i32 (i32*, i32, i32, i8*, ...) @mvwprintw(i32* %485, i32 %487, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %488)
  br label %496

490:                                              ; preds = %466
  %491 = load i32*, i32** %8, align 8
  %492 = load i32, i32* @SORT_WIN_H, align 4
  %493 = sub nsw i32 %492, 2
  %494 = load i32, i32* @SORT_DESC_SEL, align 4
  %495 = call i32 (i32*, i32, i32, i8*, ...) @mvwprintw(i32* %491, i32 %493, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %494)
  br label %496

496:                                              ; preds = %490, %484
  %497 = load i32*, i32** %8, align 8
  %498 = call i32 @wrefresh(i32* %497)
  br label %499

499:                                              ; preds = %707, %496
  %500 = load i32, i32* %12, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %710

502:                                              ; preds = %499
  %503 = load i32, i32* @stdscr, align 4
  %504 = call i32 @wgetch(i32 %503)
  store i32 %504, i32* %11, align 4
  %505 = load i32, i32* %11, align 4
  switch i32 %505, label %707 [
    i32 131, label %506
    i32 128, label %510
    i32 9, label %514
    i32 32, label %539
    i32 10, label %539
    i32 13, label %539
    i32 130, label %539
    i32 129, label %706
    i32 113, label %706
  ]

506:                                              ; preds = %502
  %507 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %508 = load i32, i32* @REQ_DOWN, align 4
  %509 = call i32 @gmenu_driver(%struct.TYPE_13__* %507, i32 %508)
  br label %707

510:                                              ; preds = %502
  %511 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %512 = load i32, i32* @REQ_UP, align 4
  %513 = call i32 @gmenu_driver(%struct.TYPE_13__* %511, i32 %512)
  br label %707

514:                                              ; preds = %502
  %515 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %515, i32 0, i32 1
  %517 = load i64, i64* %516, align 8
  %518 = load i64, i64* @SORT_ASC, align 8
  %519 = icmp eq i64 %517, %518
  br i1 %519, label %520, label %529

520:                                              ; preds = %514
  %521 = load i64, i64* @SORT_DESC, align 8
  %522 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %522, i32 0, i32 1
  store i64 %521, i64* %523, align 8
  %524 = load i32*, i32** %8, align 8
  %525 = load i32, i32* @SORT_WIN_H, align 4
  %526 = sub nsw i32 %525, 2
  %527 = load i32, i32* @SORT_DESC_SEL, align 4
  %528 = call i32 (i32*, i32, i32, i8*, ...) @mvwprintw(i32* %524, i32 %526, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %527)
  br label %538

529:                                              ; preds = %514
  %530 = load i64, i64* @SORT_ASC, align 8
  %531 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %531, i32 0, i32 1
  store i64 %530, i64* %532, align 8
  %533 = load i32*, i32** %8, align 8
  %534 = load i32, i32* @SORT_WIN_H, align 4
  %535 = sub nsw i32 %534, 2
  %536 = load i32, i32* @SORT_ASC_SEL, align 4
  %537 = call i32 (i32*, i32, i32, i8*, ...) @mvwprintw(i32* %533, i32 %535, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %536)
  br label %538

538:                                              ; preds = %529, %520
  br label %707

539:                                              ; preds = %502, %502, %502, %502
  %540 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %541 = load i32, i32* @REQ_SEL, align 4
  %542 = call i32 @gmenu_driver(%struct.TYPE_13__* %540, i32 %541)
  store i32 0, i32* %13, align 4
  br label %543

543:                                              ; preds = %702, %539
  %544 = load i32, i32* %13, align 4
  %545 = load i32, i32* %15, align 4
  %546 = icmp slt i32 %544, %545
  br i1 %546, label %547, label %705

547:                                              ; preds = %543
  %548 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %549 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %548, i32 0, i32 4
  %550 = load %struct.TYPE_13__*, %struct.TYPE_13__** %549, align 8
  %551 = load i32, i32* %13, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %550, i64 %552
  %554 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 8
  %556 = icmp ne i32 %555, 1
  br i1 %556, label %557, label %558

557:                                              ; preds = %547
  br label %702

558:                                              ; preds = %547
  %559 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %560 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %559, i32 0, i32 4
  %561 = load %struct.TYPE_13__*, %struct.TYPE_13__** %560, align 8
  %562 = load i32, i32* %13, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %561, i64 %563
  %565 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %564, i32 0, i32 5
  %566 = load %struct.TYPE_13__*, %struct.TYPE_13__** %565, align 8
  %567 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %566)
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %573

569:                                              ; preds = %558
  %570 = load i64, i64* @SORT_BY_HITS, align 8
  %571 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %572 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %571, i32 0, i32 0
  store i64 %570, i64* %572, align 8
  br label %701

573:                                              ; preds = %558
  %574 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %575 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %574, i32 0, i32 4
  %576 = load %struct.TYPE_13__*, %struct.TYPE_13__** %575, align 8
  %577 = load i32, i32* %13, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %576, i64 %578
  %580 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %579, i32 0, i32 5
  %581 = load %struct.TYPE_13__*, %struct.TYPE_13__** %580, align 8
  %582 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %581)
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %588

584:                                              ; preds = %573
  %585 = load i64, i64* @SORT_BY_VISITORS, align 8
  %586 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %587 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %586, i32 0, i32 0
  store i64 %585, i64* %587, align 8
  br label %700

588:                                              ; preds = %573
  %589 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %590 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %589, i32 0, i32 4
  %591 = load %struct.TYPE_13__*, %struct.TYPE_13__** %590, align 8
  %592 = load i32, i32* %13, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %591, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %594, i32 0, i32 5
  %596 = load %struct.TYPE_13__*, %struct.TYPE_13__** %595, align 8
  %597 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_13__* %596)
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %603

599:                                              ; preds = %588
  %600 = load i64, i64* @SORT_BY_DATA, align 8
  %601 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %602 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %601, i32 0, i32 0
  store i64 %600, i64* %602, align 8
  br label %699

603:                                              ; preds = %588
  %604 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %605 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %604, i32 0, i32 4
  %606 = load %struct.TYPE_13__*, %struct.TYPE_13__** %605, align 8
  %607 = load i32, i32* %13, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %606, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %609, i32 0, i32 5
  %611 = load %struct.TYPE_13__*, %struct.TYPE_13__** %610, align 8
  %612 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_13__* %611)
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %618

614:                                              ; preds = %603
  %615 = load i64, i64* @SORT_BY_BW, align 8
  %616 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %617 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %616, i32 0, i32 0
  store i64 %615, i64* %617, align 8
  br label %698

618:                                              ; preds = %603
  %619 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %620 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %619, i32 0, i32 4
  %621 = load %struct.TYPE_13__*, %struct.TYPE_13__** %620, align 8
  %622 = load i32, i32* %13, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %621, i64 %623
  %625 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %624, i32 0, i32 5
  %626 = load %struct.TYPE_13__*, %struct.TYPE_13__** %625, align 8
  %627 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_13__* %626)
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %633

629:                                              ; preds = %618
  %630 = load i64, i64* @SORT_BY_AVGTS, align 8
  %631 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %632 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %631, i32 0, i32 0
  store i64 %630, i64* %632, align 8
  br label %697

633:                                              ; preds = %618
  %634 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %635 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %634, i32 0, i32 4
  %636 = load %struct.TYPE_13__*, %struct.TYPE_13__** %635, align 8
  %637 = load i32, i32* %13, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %636, i64 %638
  %640 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %639, i32 0, i32 5
  %641 = load %struct.TYPE_13__*, %struct.TYPE_13__** %640, align 8
  %642 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_13__* %641)
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %648

644:                                              ; preds = %633
  %645 = load i64, i64* @SORT_BY_CUMTS, align 8
  %646 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %647 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %646, i32 0, i32 0
  store i64 %645, i64* %647, align 8
  br label %696

648:                                              ; preds = %633
  %649 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %650 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %649, i32 0, i32 4
  %651 = load %struct.TYPE_13__*, %struct.TYPE_13__** %650, align 8
  %652 = load i32, i32* %13, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %651, i64 %653
  %655 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %654, i32 0, i32 5
  %656 = load %struct.TYPE_13__*, %struct.TYPE_13__** %655, align 8
  %657 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_13__* %656)
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %648
  %660 = load i64, i64* @SORT_BY_MAXTS, align 8
  %661 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %662 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %661, i32 0, i32 0
  store i64 %660, i64* %662, align 8
  br label %695

663:                                              ; preds = %648
  %664 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %665 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %664, i32 0, i32 4
  %666 = load %struct.TYPE_13__*, %struct.TYPE_13__** %665, align 8
  %667 = load i32, i32* %13, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %666, i64 %668
  %670 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %669, i32 0, i32 5
  %671 = load %struct.TYPE_13__*, %struct.TYPE_13__** %670, align 8
  %672 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_13__* %671)
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %678

674:                                              ; preds = %663
  %675 = load i64, i64* @SORT_BY_PROT, align 8
  %676 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %677 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %676, i32 0, i32 0
  store i64 %675, i64* %677, align 8
  br label %694

678:                                              ; preds = %663
  %679 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %680 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %679, i32 0, i32 4
  %681 = load %struct.TYPE_13__*, %struct.TYPE_13__** %680, align 8
  %682 = load i32, i32* %13, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %681, i64 %683
  %685 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %684, i32 0, i32 5
  %686 = load %struct.TYPE_13__*, %struct.TYPE_13__** %685, align 8
  %687 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_13__* %686)
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %689, label %693

689:                                              ; preds = %678
  %690 = load i64, i64* @SORT_BY_MTHD, align 8
  %691 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %692 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %691, i32 0, i32 0
  store i64 %690, i64* %692, align 8
  br label %693

693:                                              ; preds = %689, %678
  br label %694

694:                                              ; preds = %693, %674
  br label %695

695:                                              ; preds = %694, %659
  br label %696

696:                                              ; preds = %695, %644
  br label %697

697:                                              ; preds = %696, %629
  br label %698

698:                                              ; preds = %697, %614
  br label %699

699:                                              ; preds = %698, %599
  br label %700

700:                                              ; preds = %699, %584
  br label %701

701:                                              ; preds = %700, %569
  store i32 0, i32* %12, align 4
  br label %705

702:                                              ; preds = %557
  %703 = load i32, i32* %13, align 4
  %704 = add nsw i32 %703, 1
  store i32 %704, i32* %13, align 4
  br label %543

705:                                              ; preds = %701, %543
  br label %707

706:                                              ; preds = %502, %502
  store i32 0, i32* %12, align 4
  br label %707

707:                                              ; preds = %502, %706, %705, %538, %510, %506
  %708 = load i32*, i32** %8, align 8
  %709 = call i32 @wrefresh(i32* %708)
  br label %499

710:                                              ; preds = %499
  store i32 0, i32* %13, align 4
  br label %711

711:                                              ; preds = %725, %710
  %712 = load i32, i32* %13, align 4
  %713 = load i32, i32* %15, align 4
  %714 = icmp slt i32 %712, %713
  br i1 %714, label %715, label %728

715:                                              ; preds = %711
  %716 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %717 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %716, i32 0, i32 4
  %718 = load %struct.TYPE_13__*, %struct.TYPE_13__** %717, align 8
  %719 = load i32, i32* %13, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %718, i64 %720
  %722 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %721, i32 0, i32 5
  %723 = load %struct.TYPE_13__*, %struct.TYPE_13__** %722, align 8
  %724 = call i32 @free(%struct.TYPE_13__* %723)
  br label %725

725:                                              ; preds = %715
  %726 = load i32, i32* %13, align 4
  %727 = add nsw i32 %726, 1
  store i32 %727, i32* %13, align 4
  br label %711

728:                                              ; preds = %711
  %729 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %730 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %729, i32 0, i32 4
  %731 = load %struct.TYPE_13__*, %struct.TYPE_13__** %730, align 8
  %732 = call i32 @free(%struct.TYPE_13__* %731)
  %733 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %734 = call i32 @free(%struct.TYPE_13__* %733)
  %735 = load i32*, i32** %4, align 8
  %736 = call i32 @touchwin(i32* %735)
  %737 = load i32*, i32** %8, align 8
  %738 = call i32 @close_win(i32* %737)
  %739 = load i32*, i32** %4, align 8
  %740 = call i32 @wrefresh(i32* %739)
  %741 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %741)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #2

declare dso_local i32* @newwin(i32, i32, i32, i32) #2

declare dso_local i32 @keypad(i32*, i32) #2

declare dso_local i32 @wborder(i32*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #2

declare dso_local %struct.TYPE_13__* @new_gmenu(i32*, i32, i32, i32, i32) #2

declare dso_local i64 @xcalloc(i32, i32) #2

declare dso_local i8* @alloc_string(i32) #2

declare dso_local i32 @post_gmenu(%struct.TYPE_13__*) #2

declare dso_local i32 @draw_header(i32*, i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @mvwprintw(i32*, i32, i32, i8*, ...) #2

declare dso_local i32 @wrefresh(i32*) #2

declare dso_local i32 @wgetch(i32) #2

declare dso_local i32 @gmenu_driver(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @strcmp(i8*, %struct.TYPE_13__*) #2

declare dso_local i32 @free(%struct.TYPE_13__*) #2

declare dso_local i32 @touchwin(i32*) #2

declare dso_local i32 @close_win(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
