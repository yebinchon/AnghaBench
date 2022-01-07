; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-memcache-server.c_return_one_key_list_long.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-memcache-server.c_return_one_key_list_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@return_one_key_list_long.buff = internal global [16 x i8] zeroinitializer, align 16
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"result = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"VALUE \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" 0 .........\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"% 9d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @return_one_key_list_long(%struct.connection* %0, i8* %1, i32 %2, i32 %3, i32 %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i64, i64* @verbosity, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %7
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %7
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 2147483647
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.connection*, %struct.connection** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @return_one_key(%struct.connection* %35, i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %37, i32* %8, align 4
  br label %193

38:                                               ; preds = %31
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  store i32 8, i32* %16, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  store i64 %43, i64* bitcast ([16 x i8]* @return_one_key_list_long.buff to i64*), align 16
  br label %49

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = call i64 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @return_one_key_list_long.buff, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct.connection*, %struct.connection** %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @return_one_key(%struct.connection* %50, i8* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @return_one_key_list_long.buff, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %8, align 4
  br label %193

54:                                               ; preds = %28
  %55 = load %struct.connection*, %struct.connection** %9, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 0
  %57 = call i32 @write_out(i32* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %58 = load %struct.connection*, %struct.connection** %9, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 0
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @write_out(i32* %59, i8* %60, i32 %61)
  %63 = load %struct.connection*, %struct.connection** %9, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 0
  %65 = call i8* @get_write_ptr(i32* %64, i32 512)
  store i8* %65, i8** %18, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %54
  store i32 -1, i32* %8, align 4
  br label %193

69:                                               ; preds = %54
  %70 = load i8*, i8** %18, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 480
  store i8* %71, i8** %19, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = call i32 @memcpy(i8* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 14)
  %74 = load i8*, i8** %18, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  store i8* %75, i8** %20, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 14
  store i8* %77, i8** %18, align 8
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 2147483647
  br i1 %79, label %80, label %99

80:                                               ; preds = %69
  %81 = load i32, i32* %13, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i8*, i8** %18, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = call i64 @sprintf(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %16, align 4
  br label %94

89:                                               ; preds = %80
  store i32 8, i32* %16, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = load i8*, i8** %18, align 8
  %93 = bitcast i8* %92 to i64*
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %89, %83
  %95 = load i32, i32* %16, align 4
  %96 = load i8*, i8** %18, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %18, align 8
  br label %100

99:                                               ; preds = %69
  store i32 0, i32* %16, align 4
  br label %100

100:                                              ; preds = %99, %94
  store i32 0, i32* %17, align 4
  br label %101

101:                                              ; preds = %169, %100
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %172

105:                                              ; preds = %101
  %106 = load i8*, i8** %18, align 8
  %107 = load i8*, i8** %19, align 8
  %108 = icmp uge i8* %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %105
  %110 = load %struct.connection*, %struct.connection** %9, align 8
  %111 = getelementptr inbounds %struct.connection, %struct.connection* %110, i32 0, i32 0
  %112 = load i8*, i8** %18, align 8
  %113 = load i8*, i8** %19, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 -480
  %115 = ptrtoint i8* %112 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @advance_write_ptr(i32* %111, i32 %118)
  %120 = load %struct.connection*, %struct.connection** %9, align 8
  %121 = getelementptr inbounds %struct.connection, %struct.connection* %120, i32 0, i32 0
  %122 = call i8* @get_write_ptr(i32* %121, i32 512)
  store i8* %122, i8** %18, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %109
  store i32 -1, i32* %8, align 4
  br label %193

126:                                              ; preds = %109
  %127 = load i8*, i8** %18, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 480
  store i8* %128, i8** %19, align 8
  br label %129

129:                                              ; preds = %126, %105
  %130 = load i32, i32* %13, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %129
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 2147483647
  br i1 %137, label %138, label %143

138:                                              ; preds = %135, %132
  %139 = load i8*, i8** %18, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %18, align 8
  store i8 44, i8* %139, align 1
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %138, %135
  %144 = load i8*, i8** %18, align 8
  %145 = load i64*, i64** %14, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @sprintf(i8* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %149)
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %16, align 4
  br label %164

154:                                              ; preds = %129
  store i32 8, i32* %21, align 4
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %155, 8
  store i32 %156, i32* %16, align 4
  %157 = load i64*, i64** %14, align 8
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i8*, i8** %18, align 8
  %163 = bitcast i8* %162 to i64*
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %154, %143
  %165 = load i32, i32* %21, align 4
  %166 = load i8*, i8** %18, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8* %168, i8** %18, align 8
  br label %169

169:                                              ; preds = %164
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %101

172:                                              ; preds = %101
  %173 = load i8*, i8** %20, align 8
  %174 = load i8*, i8** %20, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = call i64 @sprintf(i8* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %176)
  %178 = getelementptr inbounds i8, i8* %173, i64 %177
  store i8 13, i8* %178, align 1
  %179 = load i8*, i8** %18, align 8
  %180 = call i32 @memcpy(i8* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %181 = load i8*, i8** %18, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 2
  store i8* %182, i8** %18, align 8
  %183 = load %struct.connection*, %struct.connection** %9, align 8
  %184 = getelementptr inbounds %struct.connection, %struct.connection* %183, i32 0, i32 0
  %185 = load i8*, i8** %18, align 8
  %186 = load i8*, i8** %19, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 -480
  %188 = ptrtoint i8* %185 to i64
  %189 = ptrtoint i8* %187 to i64
  %190 = sub i64 %188, %189
  %191 = trunc i64 %190 to i32
  %192 = call i32 @advance_write_ptr(i32* %184, i32 %191)
  store i32 0, i32* %8, align 4
  br label %193

193:                                              ; preds = %172, %125, %68, %49, %34
  %194 = load i32, i32* %8, align 4
  ret i32 %194
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i8* @get_write_ptr(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @advance_write_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
