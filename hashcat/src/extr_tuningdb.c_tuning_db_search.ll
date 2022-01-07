; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_tuningdb.c_tuning_db_search.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_tuningdb.c_tuning_db_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@tuning_db_search.s = internal global %struct.TYPE_9__ zeroinitializer, align 8
@sort_by_tuning_db_alias = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@sort_by_tuning_db_entry = common dso_local global i32 0, align 4
@CL_DEVICE_TYPE_CPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"DEVICE_TYPE_CPU\00", align 1
@CL_DEVICE_TYPE_GPU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"DEVICE_TYPE_GPU\00", align 1
@CL_DEVICE_TYPE_ACCELERATOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"DEVICE_TYPE_ACCELERATOR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @tuning_db_search(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %11, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @hcstrdup(i8* %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %26

26:                                               ; preds = %42, %5
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i8*, i8** %12, align 8
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 95, i8* %40, align 1
  br label %41

41:                                               ; preds = %37, %30
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %14, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %14, align 8
  br label %26

45:                                               ; preds = %26
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  store i8* null, i8** %16, align 8
  %48 = load i64, i64* %13, align 8
  store i64 %48, i64* %14, align 8
  br label %49

49:                                               ; preds = %72, %45
  %50 = load i64, i64* %14, align 8
  %51 = icmp uge i64 %50, 1
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %14, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @sort_by_tuning_db_alias, align 4
  %63 = call i64 @bsearch(%struct.TYPE_9__* %15, i32 %58, i32 %61, i32 24, i32 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %17, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %66 = icmp eq %struct.TYPE_9__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %72

68:                                               ; preds = %52
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %16, align 8
  br label %75

72:                                               ; preds = %67
  %73 = load i64, i64* %14, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %14, align 8
  br label %49

75:                                               ; preds = %68, %49
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 6
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 7
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %79
  %84 = load i8*, i8** %12, align 8
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tuning_db_search.s, i32 0, i32 0), align 8
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tuning_db_search.s, i32 0, i32 2), align 8
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tuning_db_search.s, i32 0, i32 3), align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %18, align 8
  store i64 0, i64* %14, align 8
  br label %87

87:                                               ; preds = %184, %83
  %88 = load i64, i64* %14, align 8
  %89 = icmp ult i64 %88, 8
  br i1 %89, label %90, label %187

90:                                               ; preds = %87
  %91 = load i64, i64* %14, align 8
  %92 = and i64 %91, 1
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %97

95:                                               ; preds = %90
  %96 = load i8*, i8** %12, align 8
  br label %97

97:                                               ; preds = %95, %94
  %98 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %94 ], [ %96, %95 ]
  store i8* %98, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tuning_db_search.s, i32 0, i32 0), align 8
  %99 = load i64, i64* %14, align 8
  %100 = and i64 %99, 2
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  br label %105

105:                                              ; preds = %103, %102
  %106 = phi i32 [ -1, %102 ], [ %104, %103 ]
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tuning_db_search.s, i32 0, i32 2), align 8
  %107 = load i64, i64* %14, align 8
  %108 = and i64 %107, 4
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %10, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = phi i32 [ -1, %110 ], [ %112, %111 ]
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tuning_db_search.s, i32 0, i32 3), align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @sort_by_tuning_db_entry, align 4
  %122 = call i64 @bsearch(%struct.TYPE_9__* @tuning_db_search.s, i32 %117, i32 %120, i32 24, i32 %121)
  %123 = inttoptr i64 %122 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %18, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %125 = icmp ne %struct.TYPE_9__* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %187

127:                                              ; preds = %113
  %128 = load i64, i64* %14, align 8
  %129 = and i64 %128, 1
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %183

131:                                              ; preds = %127
  %132 = load i8*, i8** %16, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %149

134:                                              ; preds = %131
  %135 = load i8*, i8** %16, align 8
  store i8* %135, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tuning_db_search.s, i32 0, i32 0), align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @sort_by_tuning_db_entry, align 4
  %143 = call i64 @bsearch(%struct.TYPE_9__* @tuning_db_search.s, i32 %138, i32 %141, i32 24, i32 %142)
  %144 = inttoptr i64 %143 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %144, %struct.TYPE_9__** %18, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %146 = icmp ne %struct.TYPE_9__* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %134
  br label %187

148:                                              ; preds = %134
  br label %149

149:                                              ; preds = %148, %131
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @CL_DEVICE_TYPE_CPU, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tuning_db_search.s, i32 0, i32 0), align 8
  br label %169

155:                                              ; preds = %149
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @CL_DEVICE_TYPE_GPU, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tuning_db_search.s, i32 0, i32 0), align 8
  br label %168

161:                                              ; preds = %155
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @CL_DEVICE_TYPE_ACCELERATOR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tuning_db_search.s, i32 0, i32 0), align 8
  br label %167

167:                                              ; preds = %166, %161
  br label %168

168:                                              ; preds = %167, %160
  br label %169

169:                                              ; preds = %168, %154
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @sort_by_tuning_db_entry, align 4
  %177 = call i64 @bsearch(%struct.TYPE_9__* @tuning_db_search.s, i32 %172, i32 %175, i32 24, i32 %176)
  %178 = inttoptr i64 %177 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %178, %struct.TYPE_9__** %18, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %180 = icmp ne %struct.TYPE_9__* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %169
  br label %187

182:                                              ; preds = %169
  br label %183

183:                                              ; preds = %182, %127
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %14, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %14, align 8
  br label %87

187:                                              ; preds = %181, %147, %126, %87
  %188 = load i8*, i8** %12, align 8
  %189 = call i32 @hcfree(i8* %188)
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  ret %struct.TYPE_9__* %190
}

declare dso_local i8* @hcstrdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @bsearch(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @hcfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
