; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-memcache-server.c_return_one_key_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-memcache-server.c_return_one_key_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@return_one_key_list.buff = internal global [16 x i8] zeroinitializer, align 16
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"result = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"VALUE \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" 0 .........\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"% 9d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @return_one_key_list(%struct.connection* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
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
  store i32* %5, i32** %14, align 8
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
  br i1 %30, label %52, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 2147483647
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.connection*, %struct.connection** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @return_one_key(%struct.connection* %35, i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %37, i32* %8, align 4
  br label %188

38:                                               ; preds = %31
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  store i32 4, i32* %16, align 4
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* bitcast ([16 x i8]* @return_one_key_list.buff to i32*), align 16
  br label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @return_one_key_list.buff, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct.connection*, %struct.connection** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @return_one_key(%struct.connection* %48, i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @return_one_key_list.buff, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %8, align 4
  br label %188

52:                                               ; preds = %28
  %53 = load %struct.connection*, %struct.connection** %9, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 0
  %55 = call i32 @write_out(i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %56 = load %struct.connection*, %struct.connection** %9, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 0
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @write_out(i32* %57, i8* %58, i32 %59)
  %61 = load %struct.connection*, %struct.connection** %9, align 8
  %62 = getelementptr inbounds %struct.connection, %struct.connection* %61, i32 0, i32 0
  %63 = call i8* @get_write_ptr(i32* %62, i32 512)
  store i8* %63, i8** %18, align 8
  %64 = load i8*, i8** %18, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %52
  store i32 -1, i32* %8, align 4
  br label %188

67:                                               ; preds = %52
  %68 = load i8*, i8** %18, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 480
  store i8* %69, i8** %19, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = call i32 @memcpy(i8* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 14)
  %72 = load i8*, i8** %18, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  store i8* %73, i8** %20, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 14
  store i8* %75, i8** %18, align 8
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 2147483647
  br i1 %77, label %78, label %95

78:                                               ; preds = %67
  %79 = load i32, i32* %13, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i8*, i8** %18, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i64 @sprintf(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %16, align 4
  br label %90

86:                                               ; preds = %78
  store i32 4, i32* %16, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i8*, i8** %18, align 8
  %89 = bitcast i8* %88 to i32*
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %16, align 4
  %92 = load i8*, i8** %18, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %18, align 8
  br label %96

95:                                               ; preds = %67
  store i32 0, i32* %16, align 4
  br label %96

96:                                               ; preds = %95, %90
  store i32 0, i32* %17, align 4
  br label %97

97:                                               ; preds = %165, %96
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %168

101:                                              ; preds = %97
  %102 = load i8*, i8** %18, align 8
  %103 = load i8*, i8** %19, align 8
  %104 = icmp uge i8* %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %101
  %106 = load %struct.connection*, %struct.connection** %9, align 8
  %107 = getelementptr inbounds %struct.connection, %struct.connection* %106, i32 0, i32 0
  %108 = load i8*, i8** %18, align 8
  %109 = load i8*, i8** %19, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 -480
  %111 = ptrtoint i8* %108 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = call i32 @advance_write_ptr(i32* %107, i32 %114)
  %116 = load %struct.connection*, %struct.connection** %9, align 8
  %117 = getelementptr inbounds %struct.connection, %struct.connection* %116, i32 0, i32 0
  %118 = call i8* @get_write_ptr(i32* %117, i32 512)
  store i8* %118, i8** %18, align 8
  %119 = load i8*, i8** %18, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %105
  store i32 -1, i32* %8, align 4
  br label %188

122:                                              ; preds = %105
  %123 = load i8*, i8** %18, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 480
  store i8* %124, i8** %19, align 8
  br label %125

125:                                              ; preds = %122, %101
  %126 = load i32, i32* %13, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %125
  %129 = load i32, i32* %17, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 2147483647
  br i1 %133, label %134, label %139

134:                                              ; preds = %131, %128
  %135 = load i8*, i8** %18, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %18, align 8
  store i8 44, i8* %135, align 1
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %134, %131
  %140 = load i8*, i8** %18, align 8
  %141 = load i32*, i32** %14, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @sprintf(i8* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %21, align 4
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %16, align 4
  br label %160

150:                                              ; preds = %125
  store i32 4, i32* %21, align 4
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, 4
  store i32 %152, i32* %16, align 4
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i8*, i8** %18, align 8
  %159 = bitcast i8* %158 to i32*
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %150, %139
  %161 = load i32, i32* %21, align 4
  %162 = load i8*, i8** %18, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %18, align 8
  br label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %17, align 4
  br label %97

168:                                              ; preds = %97
  %169 = load i8*, i8** %20, align 8
  %170 = load i8*, i8** %20, align 8
  %171 = load i32, i32* %16, align 4
  %172 = call i64 @sprintf(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %171)
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  store i8 13, i8* %173, align 1
  %174 = load i8*, i8** %18, align 8
  %175 = call i32 @memcpy(i8* %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %176 = load i8*, i8** %18, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 2
  store i8* %177, i8** %18, align 8
  %178 = load %struct.connection*, %struct.connection** %9, align 8
  %179 = getelementptr inbounds %struct.connection, %struct.connection* %178, i32 0, i32 0
  %180 = load i8*, i8** %18, align 8
  %181 = load i8*, i8** %19, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 -480
  %183 = ptrtoint i8* %180 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = trunc i64 %185 to i32
  %187 = call i32 @advance_write_ptr(i32* %179, i32 %186)
  store i32 0, i32* %8, align 4
  br label %188

188:                                              ; preds = %168, %121, %66, %47, %34
  %189 = load i32, i32* %8, align 4
  ret i32 %189
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

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
