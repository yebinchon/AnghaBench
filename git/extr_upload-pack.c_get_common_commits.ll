; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_get_common_commits.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_get_common_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i32 }
%struct.object_array = type { i64 }
%struct.object_id = type { i32 }

@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@save_commit_buffer = common dso_local global i64 0, align 8
@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@multi_ack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ACK %s ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NAK\0A\00", align 1
@no_done = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"ACK %s\0A\00", align 1
@stateless_rpc = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"have \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ACK %s continue\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ACK %s common\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"git upload-pack: expected SHA1 list, got '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_reader*, %struct.object_array*, %struct.object_array*)* @get_common_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_common_commits(%struct.packet_reader* %0, %struct.object_array* %1, %struct.object_array* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_reader*, align 8
  %6 = alloca %struct.object_array*, align 8
  %7 = alloca %struct.object_array*, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.packet_reader* %0, %struct.packet_reader** %5, align 8
  store %struct.object_array* %1, %struct.object_array** %6, align 8
  store %struct.object_array* %2, %struct.object_array** %7, align 8
  %17 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* @save_commit_buffer, align 8
  br label %22

22:                                               ; preds = %139, %119, %67, %3
  %23 = call i32 (...) @reset_timeout()
  %24 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %25 = call i64 @packet_reader_read(%struct.packet_reader* %24)
  %26 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  %29 = load i32, i32* @multi_ack, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load %struct.object_array*, %struct.object_array** %6, align 8
  %39 = load %struct.object_array*, %struct.object_array** %7, align 8
  %40 = call i64 @ok_to_give_up(%struct.object_array* %38, %struct.object_array* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  store i32 1, i32* %13, align 4
  %43 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %44

44:                                               ; preds = %42, %37, %34, %31, %28
  %45 = load %struct.object_array*, %struct.object_array** %6, align 8
  %46 = getelementptr inbounds %struct.object_array, %struct.object_array* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @multi_ack, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %44
  %53 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i64, i64* @no_done, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %144

62:                                               ; preds = %57, %54
  %63 = load i64, i64* @stateless_rpc, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @exit(i32 0) #4
  unreachable

67:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %22

68:                                               ; preds = %22
  %69 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %70 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @skip_prefix(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %14)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %120

74:                                               ; preds = %68
  %75 = load i8*, i8** %14, align 8
  %76 = load %struct.object_array*, %struct.object_array** %6, align 8
  %77 = call i32 @got_oid(i8* %75, %struct.object_id* %8, %struct.object_array* %76)
  switch i32 %77, label %98 [
    i32 -1, label %78
  ]

78:                                               ; preds = %74
  store i32 1, i32* %12, align 4
  %79 = load i32, i32* @multi_ack, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = load %struct.object_array*, %struct.object_array** %6, align 8
  %83 = load %struct.object_array*, %struct.object_array** %7, align 8
  %84 = call i64 @ok_to_give_up(%struct.object_array* %82, %struct.object_array* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = call i8* @oid_to_hex(%struct.object_id* %8)
  store i8* %87, i8** %16, align 8
  %88 = load i32, i32* @multi_ack, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  store i32 1, i32* %13, align 4
  %91 = load i8*, i8** %16, align 8
  %92 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %91)
  br label %96

93:                                               ; preds = %86
  %94 = load i8*, i8** %16, align 8
  %95 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %81, %78
  br label %119

98:                                               ; preds = %74
  store i32 1, i32* %11, align 4
  %99 = call i32 @oid_to_hex_r(i8* %21, %struct.object_id* %8)
  %100 = load i32, i32* @multi_ack, align 4
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %21)
  br label %118

104:                                              ; preds = %98
  %105 = load i32, i32* @multi_ack, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  br label %117

109:                                              ; preds = %104
  %110 = load %struct.object_array*, %struct.object_array** %6, align 8
  %111 = getelementptr inbounds %struct.object_array, %struct.object_array* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 1
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %116

116:                                              ; preds = %114, %109
  br label %117

117:                                              ; preds = %116, %107
  br label %118

118:                                              ; preds = %117, %102
  br label %119

119:                                              ; preds = %118, %97
  br label %22

120:                                              ; preds = %68
  %121 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %122 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @strcmp(i32 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %120
  %127 = load %struct.object_array*, %struct.object_array** %6, align 8
  %128 = getelementptr inbounds %struct.object_array, %struct.object_array* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i32, i32* @multi_ack, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %136

136:                                              ; preds = %134, %131
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %144

137:                                              ; preds = %126
  %138 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %144

139:                                              ; preds = %120
  %140 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %141 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  br label %22

144:                                              ; preds = %137, %136, %60
  %145 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @reset_timeout(...) #2

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #2

declare dso_local i64 @ok_to_give_up(%struct.object_array*, %struct.object_array*) #2

declare dso_local i32 @packet_write_fmt(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @skip_prefix(i32, i8*, i8**) #2

declare dso_local i32 @got_oid(i8*, %struct.object_id*, %struct.object_array*) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @oid_to_hex_r(i8*, %struct.object_id*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @die(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
