; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kopen.c_ftp_open.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kopen.c_ftp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"ftp://\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"21\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"RETR %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"USER anonymous\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PASS kopen@\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"TYPE I\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"PASV\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%d,%d,%d,%d,%d,%d\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ftp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [80 x i8], align 16
  %9 = alloca [10 x i8], align 1
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 -1, i32* %12, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @strstr(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %176

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 6
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %38, %22
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 47
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  br label %25

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 47
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %176

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sub nsw i64 %52, 6
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %55, i8** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i8* @calloc(i32 %57, i32 1)
  store i8* %58, i8** %5, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 6
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @strncpy(i8* %59, i8* %61, i32 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = add nsw i32 %65, 8
  %67 = call i8* @calloc(i32 %66, i32 1)
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = call i32 @memset(%struct.TYPE_5__* %16, i32 0, i32 16)
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* @socket_connect(i8* %72, i8* %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %47
  br label %165

81:                                               ; preds = %47
  %82 = call i32 @kftp_get_response(%struct.TYPE_5__* %16)
  %83 = call i32 @kftp_send_cmd(%struct.TYPE_5__* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %84 = call i32 @kftp_send_cmd(%struct.TYPE_5__* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %85 = call i32 @kftp_send_cmd(%struct.TYPE_5__* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %86 = call i32 @kftp_send_cmd(%struct.TYPE_5__* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %4, align 8
  br label %89

89:                                               ; preds = %102, %81
  %90 = load i8*, i8** %4, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i8*, i8** %4, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 40
  br label %99

99:                                               ; preds = %94, %89
  %100 = phi i1 [ false, %89 ], [ %98, %94 ]
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %4, align 8
  br label %89

105:                                              ; preds = %99
  %106 = load i8*, i8** %4, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 40
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %165

111:                                              ; preds = %105
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %4, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %116 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  %117 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  %118 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 3
  %119 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 4
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 5
  %121 = call i32 @sscanf(i8* %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32* %115, i32* %116, i32* %117, i32* %118, i32* %119, i32* %120)
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %123 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %124 = call i32 @memcpy(i32* %122, i32* %123, i32 16)
  %125 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 4
  %126 = load i32, i32* %125, align 16
  %127 = shl i32 %126, 8
  %128 = and i32 %127, 65280
  %129 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 5
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %128, %130
  store i32 %131, i32* %14, align 4
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @kftp_send_cmd(%struct.TYPE_5__* %16, i8* %132, i32 0)
  %134 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i8*, ...) @sprintf(i8* %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %136, i32 %138, i32 %140, i32 %142)
  %144 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %145 = load i32, i32* %14, align 4
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %145)
  %147 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %148 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %149 = call i8* @socket_connect(i8* %147, i8* %148)
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %154

153:                                              ; preds = %111
  br label %165

154:                                              ; preds = %111
  %155 = call i32 @kftp_get_response(%struct.TYPE_5__* %16)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 150
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @close(i32 %159)
  store i32 -1, i32* %12, align 4
  br label %161

161:                                              ; preds = %158, %154
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @close(i32 %163)
  br label %165

165:                                              ; preds = %161, %153, %110, %80
  %166 = load i8*, i8** %5, align 8
  %167 = call i32 @free(i8* %166)
  %168 = load i8*, i8** %6, align 8
  %169 = call i32 @free(i8* %168)
  %170 = load i8*, i8** %7, align 8
  %171 = call i32 @free(i8* %170)
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @free(i8* %173)
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %165, %46, %21
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @socket_connect(i8*, i8*) #1

declare dso_local i32 @kftp_get_response(%struct.TYPE_5__*) #1

declare dso_local i32 @kftp_send_cmd(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
