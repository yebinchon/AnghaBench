; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"mc_store: op=%d, key=\22%s\22, flags=%d, delay=%d, bytes=%d\0A\00", align 1
@binlog_disabled = common dso_local global i32 0, align 4
@reverse_friends_mode = common dso_local global i64 0, align 8
@mct_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"userlist\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"friends%d_%d\00", align 1
@R = common dso_local global i32 0, align 4
@MAX_RES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"set friend cat list: size = %d, res = %d\0A\00", align 1
@stats_buff = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"friendreq%d_%d\00", align 1
@mct_add = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"friend%d_%d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"privacy%d_%n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_store(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %23 = load i64, i64* @verbosity, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %7
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %7
  %34 = load i32, i32* @binlog_disabled, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -2, i32* %8, align 4
  br label %198

37:                                               ; preds = %33
  %38 = load i64, i64* @reverse_friends_mode, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @mct_set, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = icmp sge i32 %45, 8
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load %struct.connection*, %struct.connection** %9, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @exec_store_userlist(%struct.connection* %52, i8* %53, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %198

57:                                               ; preds = %47, %44, %40
  store i32 0, i32* %8, align 4
  br label %198

58:                                               ; preds = %37
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @mct_set, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @sscanf(i8* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %16, i32* %17)
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %100

66:                                               ; preds = %62
  %67 = load i32, i32* %16, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %66
  %70 = load i32, i32* %17, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %69
  %73 = load i32, i32* %17, align 4
  %74 = icmp slt i32 %73, 32
  br i1 %74, label %75, label %100

75:                                               ; preds = %72
  %76 = load i32, i32* @R, align 4
  %77 = load i32, i32* @MAX_RES, align 4
  %78 = load %struct.connection*, %struct.connection** %9, align 8
  %79 = getelementptr inbounds %struct.connection, %struct.connection* %78, i32 0, i32 0
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @parse_list(i32 %76, i32 %77, i32* %79, i32 %80)
  store i32 %81, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %82 = load i32, i32* %21, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %75
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @R, align 4
  %88 = load i32, i32* %21, align 4
  %89 = call i32 @do_set_category_friend_list(i32 %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %22, align 4
  br label %90

90:                                               ; preds = %84, %75
  %91 = load i64, i64* @verbosity, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %22, align 4
  %97 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* %22, align 4
  store i32 %99, i32* %8, align 4
  br label %198

100:                                              ; preds = %72, %69, %66, %62, %58
  %101 = load i32, i32* %15, align 4
  %102 = icmp sgt i32 %101, 1024
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 -2, i32* %8, align 4
  br label %198

104:                                              ; preds = %100
  %105 = load %struct.connection*, %struct.connection** %9, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 0
  %107 = load i64*, i64** @stats_buff, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @read_in(i32* %106, i64* %107, i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i64*, i64** @stats_buff, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 0, i64* %117, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 @sscanf(i8* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %16, i32* %18)
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %145

121:                                              ; preds = %104
  %122 = load i32, i32* %16, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %121
  %125 = load i32, i32* %18, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i64*, i64** @stats_buff, align 8
  %131 = call i32 @atol(i64* %130)
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @mct_add, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = mul nsw i32 %135, 2
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @mct_set, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = add nsw i32 %136, %140
  %142 = call i64 @do_add_friend_request(i32 %128, i32 %129, i32 %131, i32 %141)
  %143 = icmp sge i64 %142, 0
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %8, align 4
  br label %198

145:                                              ; preds = %124, %121, %104
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @mct_add, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %145
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 @sscanf(i8* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %16, i32* %18)
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %169

153:                                              ; preds = %149
  %154 = load i32, i32* %16, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load i32, i32* %18, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %156
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load i64*, i64** @stats_buff, align 8
  %163 = call i32 @atol(i64* %162)
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @mct_set, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @do_add_friend(i32 %160, i32 %161, i32 %163, i32 0, i32 %167)
  store i32 %168, i32* %8, align 4
  br label %198

169:                                              ; preds = %156, %153, %149, %145
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @mct_add, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %197

173:                                              ; preds = %169
  %174 = load i8*, i8** %11, align 8
  %175 = call i32 @sscanf(i8* %174, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %16, i32* %19)
  %176 = icmp sge i32 %175, 1
  br i1 %176, label %177, label %197

177:                                              ; preds = %173
  %178 = load i32, i32* %16, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %177
  %181 = load i8*, i8** %11, align 8
  %182 = load i32, i32* %19, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = call i64 @parse_privacy_key(i8* %184, i32* %20, i32 1)
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %180
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %20, align 4
  %190 = load i64*, i64** @stats_buff, align 8
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @mct_set, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @do_set_privacy(i32 %188, i32 %189, i64* %190, i32 %191, i32 %195)
  store i32 %196, i32* %8, align 4
  br label %198

197:                                              ; preds = %180, %177, %173, %169
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %197, %187, %159, %127, %103, %98, %57, %51, %36
  %199 = load i32, i32* %8, align 4
  ret i32 %199
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @exec_store_userlist(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @parse_list(i32, i32, i32*, i32) #1

declare dso_local i32 @do_set_category_friend_list(i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i64*, i32) #1

declare dso_local i64 @do_add_friend_request(i32, i32, i32, i32) #1

declare dso_local i32 @atol(i64*) #1

declare dso_local i32 @do_add_friend(i32, i32, i32, i32, i32) #1

declare dso_local i64 @parse_privacy_key(i8*, i32*, i32) #1

declare dso_local i32 @do_set_privacy(i32, i32, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
