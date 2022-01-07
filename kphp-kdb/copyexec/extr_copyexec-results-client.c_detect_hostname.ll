; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-client.c_detect_hostname.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-client.c_detect_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@detect_hostname.hostname_buffer = internal global [256 x i8] zeroinitializer, align 16
@hostname = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"HOSTNAME\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/etc/hostname\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot read /etc/hostname: %m\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"cannot read hostname from /etc/hostname: %d bytes read\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"fatal: cannot detect hostname\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"fatal: bad hostname '%s'\0A\00", align 1
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
  br i1 %9, label %74, label %10

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
  br i1 %17, label %73, label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = call i32 @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @exit(i32 2) #3
  unreachable

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @read(i32 %27, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @detect_hostname.hostname_buffer, i64 0, i64 0), i32 256)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %1, align 4
  %33 = icmp sge i32 %32, 256
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %1, align 4
  %36 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = call i32 @exit(i32 2) #3
  unreachable

38:                                               ; preds = %31
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* @detect_hostname.hostname_buffer, i64 0, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @close(i32 %42)
  store i32* bitcast ([256 x i8]* @detect_hostname.hostname_buffer to i32*), i32** @hostname, align 8
  br label %44

44:                                               ; preds = %54, %38
  %45 = load i32*, i32** @hostname, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** @hostname, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 32
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ true, %44 ], [ %51, %48 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i32*, i32** @hostname, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** @hostname, align 8
  br label %44

57:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %65, %57
  %59 = load i32*, i32** @hostname, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 32
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %58

68:                                               ; preds = %58
  %69 = load i32*, i32** @hostname, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %14
  br label %74

74:                                               ; preds = %73, %6
  %75 = load i32*, i32** @hostname, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32*, i32** @hostname, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77, %74
  %82 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %83 = call i32 @exit(i32 2) #3
  unreachable

84:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %152, %84
  %86 = load i32*, i32** @hostname, align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 48
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load i32*, i32** @hostname, align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp sle i32 %97, 57
  br i1 %98, label %150, label %99

99:                                               ; preds = %92, %85
  %100 = load i32*, i32** @hostname, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 46
  br i1 %105, label %150, label %106

106:                                              ; preds = %99
  %107 = load i32*, i32** @hostname, align 8
  %108 = load i32, i32* %2, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 45
  br i1 %112, label %150, label %113

113:                                              ; preds = %106
  %114 = load i32*, i32** @hostname, align 8
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 95
  br i1 %119, label %150, label %120

120:                                              ; preds = %113
  %121 = load i32*, i32** @hostname, align 8
  %122 = load i32, i32* %2, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp sge i32 %125, 65
  br i1 %126, label %127, label %134

127:                                              ; preds = %120
  %128 = load i32*, i32** @hostname, align 8
  %129 = load i32, i32* %2, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp sle i32 %132, 90
  br i1 %133, label %150, label %134

134:                                              ; preds = %127, %120
  %135 = load i32*, i32** @hostname, align 8
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %139, 97
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load i32*, i32** @hostname, align 8
  %143 = load i32, i32* %2, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp sle i32 %146, 122
  br label %148

148:                                              ; preds = %141, %134
  %149 = phi i1 [ false, %134 ], [ %147, %141 ]
  br label %150

150:                                              ; preds = %148, %127, %113, %106, %99, %92
  %151 = phi i1 [ true, %127 ], [ true, %113 ], [ true, %106 ], [ true, %99 ], [ true, %92 ], [ %149, %148 ]
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = load i32, i32* %2, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %2, align 4
  br label %85

155:                                              ; preds = %150
  %156 = load i32*, i32** @hostname, align 8
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %2, align 4
  %164 = icmp sge i32 %163, 64
  br i1 %164, label %165, label %169

165:                                              ; preds = %162, %155
  %166 = load i32*, i32** @hostname, align 8
  %167 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32* %166)
  %168 = call i32 @exit(i32 2) #3
  unreachable

169:                                              ; preds = %162
  %170 = load i32*, i32** @hostname, align 8
  %171 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %170)
  ret i32 0
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
