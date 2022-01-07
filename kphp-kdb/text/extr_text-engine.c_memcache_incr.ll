; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_memcache_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_memcache_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"memcache_incr: op=%d, key='%s', val=%lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"flags%d_%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"4294967295\0D\0A\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%d\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"extra\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"extra%d_%d:%d\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"-2147483648\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Extra\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Extra%d_%d:%d\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"-9223372036854775808\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%lld\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_incr(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %21 = load i32, i32* @verbosity, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26, i64 %27)
  br label %29

29:                                               ; preds = %23, %5
  %30 = load %struct.connection*, %struct.connection** %7, align 8
  %31 = call i32 @free_tmp_buffers(%struct.connection* %30)
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %12, i32* %13)
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %75

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @do_decr_flags(i32 %45, i32 %46, i64 %47)
  store i32 %48, i32* %14, align 4
  br label %54

49:                                               ; preds = %41
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @do_incr_flags(i32 %50, i32 %51, i64 %52)
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, -2
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.connection*, %struct.connection** %7, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 0
  %60 = call i32 @write_out(i32* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12)
  store i32 0, i32* %6, align 4
  br label %220

61:                                               ; preds = %54
  %62 = load i32, i32* %14, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.connection*, %struct.connection** %7, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 0
  %67 = load i8*, i8** @stats_buff, align 8
  %68 = load i8*, i8** @stats_buff, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  %72 = call i32 @write_out(i32* %66, i8* %67, i32 %71)
  store i32 0, i32* %6, align 4
  br label %220

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %38, %35, %29
  %76 = load i32, i32* %10, align 4
  %77 = icmp sge i32 %76, 5
  br i1 %77, label %78, label %145

78:                                               ; preds = %75
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @strncmp(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %145, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %12, i32* %15, i32* %16)
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %144

86:                                               ; preds = %82
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %144

89:                                               ; preds = %86
  %90 = load i32, i32* %15, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %89
  %93 = load i32, i32* %16, align 4
  %94 = icmp ult i32 %93, 8
  br i1 %94, label %95, label %144

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i64, i64* %11, align 8
  %103 = sub nsw i64 0, %102
  br label %106

104:                                              ; preds = %95
  %105 = load i64, i64* %11, align 8
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i64 [ %103, %101 ], [ %105, %104 ]
  %108 = call i32 @do_incr_value(i32 %96, i32 %97, i32 %98, i64 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp sle i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.connection*, %struct.connection** %7, align 8
  %113 = getelementptr inbounds %struct.connection, %struct.connection* %112, i32 0, i32 0
  %114 = call i32 @write_out(i32* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  store i32 0, i32* %6, align 4
  br label %220

115:                                              ; preds = %106
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @get_message_value(i32 %116, i32 %117, i32 %118, i32 -1, i64* %17)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %120, -2
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load %struct.connection*, %struct.connection** %7, align 8
  %124 = getelementptr inbounds %struct.connection, %struct.connection* %123, i32 0, i32 0
  %125 = call i32 @write_out(i32* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 13)
  store i32 0, i32* %6, align 4
  br label %220

126:                                              ; preds = %115
  %127 = load i32, i32* %14, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.connection*, %struct.connection** %7, align 8
  %131 = getelementptr inbounds %struct.connection, %struct.connection* %130, i32 0, i32 0
  %132 = call i32 @write_out(i32* %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  store i32 0, i32* %6, align 4
  br label %220

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.connection*, %struct.connection** %7, align 8
  %136 = getelementptr inbounds %struct.connection, %struct.connection* %135, i32 0, i32 0
  %137 = load i8*, i8** @stats_buff, align 8
  %138 = load i8*, i8** @stats_buff, align 8
  %139 = load i64, i64* %17, align 8
  %140 = trunc i64 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = call i32 @sprintf(i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %141)
  %143 = call i32 @write_out(i32* %136, i8* %137, i32 %142)
  store i32 0, i32* %6, align 4
  br label %220

144:                                              ; preds = %92, %89, %86, %82
  br label %145

145:                                              ; preds = %144, %78, %75
  %146 = load i32, i32* %10, align 4
  %147 = icmp sge i32 %146, 5
  br i1 %147, label %148, label %216

148:                                              ; preds = %145
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @strncmp(i8* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %216, label %152

152:                                              ; preds = %148
  %153 = load i8*, i8** %9, align 8
  %154 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32* %12, i32* %18, i32* %19)
  %155 = icmp eq i32 %154, 3
  br i1 %155, label %156, label %215

156:                                              ; preds = %152
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %215

159:                                              ; preds = %156
  %160 = load i32, i32* %18, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %215

162:                                              ; preds = %159
  %163 = load i32, i32* %19, align 4
  %164 = icmp sge i32 %163, 8
  br i1 %164, label %165, label %215

165:                                              ; preds = %162
  %166 = load i32, i32* %19, align 4
  %167 = icmp slt i32 %166, 12
  br i1 %167, label %168, label %215

168:                                              ; preds = %165
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load i64, i64* %11, align 8
  %176 = sub nsw i64 0, %175
  br label %179

177:                                              ; preds = %168
  %178 = load i64, i64* %11, align 8
  br label %179

179:                                              ; preds = %177, %174
  %180 = phi i64 [ %176, %174 ], [ %178, %177 ]
  %181 = call i32 @do_incr_value_long(i32 %169, i32 %170, i32 %171, i64 %180)
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = icmp sle i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load %struct.connection*, %struct.connection** %7, align 8
  %186 = getelementptr inbounds %struct.connection, %struct.connection* %185, i32 0, i32 0
  %187 = call i32 @write_out(i32* %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  store i32 0, i32* %6, align 4
  br label %220

188:                                              ; preds = %179
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %19, align 4
  %192 = call i32 @get_message_value(i32 %189, i32 %190, i32 %191, i32 -1, i64* %20)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp eq i32 %193, -2
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load %struct.connection*, %struct.connection** %7, align 8
  %197 = getelementptr inbounds %struct.connection, %struct.connection* %196, i32 0, i32 0
  %198 = call i32 @write_out(i32* %197, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 22)
  store i32 0, i32* %6, align 4
  br label %220

199:                                              ; preds = %188
  %200 = load i32, i32* %14, align 4
  %201 = icmp sle i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load %struct.connection*, %struct.connection** %7, align 8
  %204 = getelementptr inbounds %struct.connection, %struct.connection* %203, i32 0, i32 0
  %205 = call i32 @write_out(i32* %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  store i32 0, i32* %6, align 4
  br label %220

206:                                              ; preds = %199
  br label %207

207:                                              ; preds = %206
  %208 = load %struct.connection*, %struct.connection** %7, align 8
  %209 = getelementptr inbounds %struct.connection, %struct.connection* %208, i32 0, i32 0
  %210 = load i8*, i8** @stats_buff, align 8
  %211 = load i8*, i8** @stats_buff, align 8
  %212 = load i64, i64* %20, align 8
  %213 = call i32 @sprintf(i8* %211, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 %212)
  %214 = call i32 @write_out(i32* %209, i8* %210, i32 %213)
  store i32 0, i32* %6, align 4
  br label %220

215:                                              ; preds = %165, %162, %159, %156, %152
  br label %216

216:                                              ; preds = %215, %148, %145
  %217 = load %struct.connection*, %struct.connection** %7, align 8
  %218 = getelementptr inbounds %struct.connection, %struct.connection* %217, i32 0, i32 0
  %219 = call i32 @write_out(i32* %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %216, %207, %202, %195, %184, %134, %129, %122, %111, %64, %57
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i64) #1

declare dso_local i32 @free_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @do_decr_flags(i32, i32, i64) #1

declare dso_local i32 @do_incr_flags(i32, i32, i64) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @do_incr_value(i32, i32, i32, i64) #1

declare dso_local i32 @get_message_value(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @do_incr_value_long(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
