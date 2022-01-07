; ModuleID = '/home/carl/AnghaBench/git/extr_sub-process.c_handshake_version.c'
source_filename = "/home/carl/AnghaBench/git/extr_sub-process.c_handshake_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s-client\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not write client identification\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"version=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Could not write requested version\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not write flush packet\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"-server\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Unexpected line '%s', expected %s-server\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"<flush packet>\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"version=\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Unexpected line '%s', expected version\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Unexpected line '%s', expected flush\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Version %d not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.child_process*, i8*, i32*, i32*)* @handshake_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handshake_version(%struct.child_process* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.child_process*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.child_process* %0, %struct.child_process** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32* %10, i32** %9, align 8
  br label %17

17:                                               ; preds = %16, %4
  %18 = load %struct.child_process*, %struct.child_process** %6, align 8
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 (i32, i8*, ...) @packet_write_fmt_gently(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %5, align 4
  br label %151

26:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load %struct.child_process*, %struct.child_process** %6, align 8
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 (i32, i8*, ...) @packet_write_fmt_gently(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %5, align 4
  br label %151

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load %struct.child_process*, %struct.child_process** %6, align 8
  %53 = getelementptr inbounds %struct.child_process, %struct.child_process* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @packet_flush_gently(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 %58, i32* %5, align 4
  br label %151

59:                                               ; preds = %51
  %60 = load %struct.child_process*, %struct.child_process** %6, align 8
  %61 = getelementptr inbounds %struct.child_process, %struct.child_process* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @packet_read_line(i32 %62, i32* null)
  store i8* %63, i8** %12, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @skip_prefix(i8* %66, i8* %67, i8** %13)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i8*, i8** %13, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %70, %65, %59
  %75 = load i8*, i8** %12, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i8*, i8** %12, align 8
  br label %80

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i8* [ %78, %77 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), %79 ]
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %81, i8* %82)
  store i32 %83, i32* %5, align 4
  br label %151

84:                                               ; preds = %70
  %85 = load %struct.child_process*, %struct.child_process** %6, align 8
  %86 = getelementptr inbounds %struct.child_process, %struct.child_process* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @packet_read_line(i32 %87, i32* null)
  store i8* %88, i8** %12, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @skip_prefix(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %13)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8*, i8** %13, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = call i64 @strtol_i(i8* %95, i32 10, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94, %90, %84
  %100 = load i8*, i8** %12, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i8*, i8** %12, align 8
  br label %105

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i8* [ %103, %102 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), %104 ]
  %107 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %106)
  store i32 %107, i32* %5, align 4
  br label %151

108:                                              ; preds = %94
  %109 = load %struct.child_process*, %struct.child_process** %6, align 8
  %110 = getelementptr inbounds %struct.child_process, %struct.child_process* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @packet_read_line(i32 %111, i32* null)
  store i8* %112, i8** %12, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %115)
  store i32 %116, i32* %5, align 4
  br label %151

117:                                              ; preds = %108
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %136, %117
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %118
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %139

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %118

139:                                              ; preds = %134, %118
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %139
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %148)
  store i32 %149, i32* %5, align 4
  br label %151

150:                                              ; preds = %139
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %150, %146, %114, %105, %80, %57, %45, %24
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i64 @packet_write_fmt_gently(i32, i8*, ...) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @packet_flush_gently(i32) #1

declare dso_local i8* @packet_read_line(i32, i32*) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtol_i(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
