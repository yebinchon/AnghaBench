; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_detect_hostname.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_detect_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hostname = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"HOSTNAME\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/etc/hostname\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot read /etc/hostname: %m\0A\00", align 1
@hostname_buffer = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"cannot read hostname from /etc/hostname: %d bytes read\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"fatal: cannot detect hostname\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"fatal: bad hostname '%s'\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"hostname is %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @detect_hostname() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32*, i32** @hostname, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32*, i32** @hostname, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %79, label %10

10:                                               ; preds = %6, %0
  %11 = call i32* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** @hostname, align 8
  %12 = load i32*, i32** @hostname, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32*, i32** @hostname, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %78, label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = call i32 @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @exit(i32 2) #3
  unreachable

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** @hostname_buffer, align 8
  %30 = call i32 @read(i32 %28, i32* %29, i32 256)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %1, align 4
  %35 = icmp sge i32 %34, 256
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %27
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = call i32 @exit(i32 2) #3
  unreachable

41:                                               ; preds = %33
  %42 = load i32*, i32** @hostname_buffer, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32*, i32** @hostname_buffer, align 8
  store i32* %48, i32** @hostname, align 8
  br label %49

49:                                               ; preds = %59, %41
  %50 = load i32*, i32** @hostname, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 9
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** @hostname, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 32
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ true, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i32*, i32** @hostname, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** @hostname, align 8
  br label %49

62:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %70, %62
  %64 = load i32*, i32** @hostname, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 32
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  br label %63

73:                                               ; preds = %63
  %74 = load i32*, i32** @hostname, align 8
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %14
  br label %79

79:                                               ; preds = %78, %6
  %80 = load i32*, i32** @hostname, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32*, i32** @hostname, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %89 = call i32 @exit(i32 2) #3
  unreachable

90:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %158, %90
  %92 = load i32*, i32** @hostname, align 8
  %93 = load i32, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp sge i32 %96, 48
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i32*, i32** @hostname, align 8
  %100 = load i32, i32* %2, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %103, 57
  br i1 %104, label %156, label %105

105:                                              ; preds = %98, %91
  %106 = load i32*, i32** @hostname, align 8
  %107 = load i32, i32* %2, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 46
  br i1 %111, label %156, label %112

112:                                              ; preds = %105
  %113 = load i32*, i32** @hostname, align 8
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 45
  br i1 %118, label %156, label %119

119:                                              ; preds = %112
  %120 = load i32*, i32** @hostname, align 8
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 95
  br i1 %125, label %156, label %126

126:                                              ; preds = %119
  %127 = load i32*, i32** @hostname, align 8
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %131, 65
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load i32*, i32** @hostname, align 8
  %135 = load i32, i32* %2, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp sle i32 %138, 90
  br i1 %139, label %156, label %140

140:                                              ; preds = %133, %126
  %141 = load i32*, i32** @hostname, align 8
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp sge i32 %145, 97
  br i1 %146, label %147, label %154

147:                                              ; preds = %140
  %148 = load i32*, i32** @hostname, align 8
  %149 = load i32, i32* %2, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp sle i32 %152, 122
  br label %154

154:                                              ; preds = %147, %140
  %155 = phi i1 [ false, %140 ], [ %153, %147 ]
  br label %156

156:                                              ; preds = %154, %133, %119, %112, %105, %98
  %157 = phi i1 [ true, %133 ], [ true, %119 ], [ true, %112 ], [ true, %105 ], [ true, %98 ], [ %155, %154 ]
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  %159 = load i32, i32* %2, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %2, align 4
  br label %91

161:                                              ; preds = %156
  %162 = load i32*, i32** @hostname, align 8
  %163 = load i32, i32* %2, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %161
  %169 = load i32, i32* %2, align 4
  %170 = icmp sge i32 %169, 64
  br i1 %170, label %171, label %176

171:                                              ; preds = %168, %161
  %172 = load i32, i32* @stderr, align 4
  %173 = load i32*, i32** @hostname, align 8
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32* %173)
  %175 = call i32 @exit(i32 2) #3
  unreachable

176:                                              ; preds = %168
  %177 = load i64, i64* @verbosity, align 8
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* @stderr, align 4
  %181 = load i32*, i32** @hostname, align 8
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %181)
  br label %183

183:                                              ; preds = %179, %176
  ret i32 0
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
