; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_daemon_conn_thread.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_daemon_conn_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.expbuf_t = type { i32* }

@NEVERBLEED_AUTH_TOKEN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to receive authencication token from client\00", align 1
@daemon_vars = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"client authentication failed\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to parse request\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"priv_enc\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"priv_dec\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"load_key\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"del_rsa_key\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"setuidgid\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"unknown command:%s\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"connection closed by client\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @daemon_conn_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @daemon_conn_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.expbuf_t, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = sub i64 %9, 0
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = bitcast %struct.expbuf_t* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = load i32, i32* @NEVERBLEED_AUTH_TOKEN_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = bitcast i8* %16 to i8**
  %19 = trunc i64 %14 to i32
  %20 = call i64 @read_nbytes(i32 %17, i8** %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @warnf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %125

24:                                               ; preds = %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @daemon_vars, i32 0, i32 0), align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NEVERBLEED_AUTH_TOKEN_SIZE, align 4
  %29 = call i64 @memcmp(i8* %16, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 (i8*, ...) @warnf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %125

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %122, %33
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @expbuf_read(%struct.expbuf_t* %4, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i64, i64* @errno, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @warnf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  br label %124

45:                                               ; preds = %35
  %46 = call i8* @expbuf_shift_str(%struct.expbuf_t* %4)
  store i8* %46, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  store i64 0, i64* @errno, align 8
  %49 = call i32 (i8*, ...) @warnf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %124

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = call i64 @priv_enc_stub(%struct.expbuf_t* %4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %124

58:                                               ; preds = %54
  br label %112

59:                                               ; preds = %50
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = call i64 @priv_dec_stub(%struct.expbuf_t* %4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %124

67:                                               ; preds = %63
  br label %111

68:                                               ; preds = %59
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = call i64 @sign_stub(%struct.expbuf_t* %4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %124

76:                                               ; preds = %72
  br label %110

77:                                               ; preds = %68
  %78 = load i8*, i8** %7, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = call i64 @load_key_stub(%struct.expbuf_t* %4)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %124

85:                                               ; preds = %81
  br label %109

86:                                               ; preds = %77
  %87 = load i8*, i8** %7, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = call i64 @del_rsa_key_stub(%struct.expbuf_t* %4)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %124

94:                                               ; preds = %90
  br label %108

95:                                               ; preds = %86
  %96 = load i8*, i8** %7, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = call i64 @setuidgid_stub(%struct.expbuf_t* %4)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %124

103:                                              ; preds = %99
  br label %107

104:                                              ; preds = %95
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 (i8*, ...) @warnf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %105)
  br label %124

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107, %94
  br label %109

109:                                              ; preds = %108, %85
  br label %110

110:                                              ; preds = %109, %76
  br label %111

111:                                              ; preds = %110, %67
  br label %112

112:                                              ; preds = %111, %58
  %113 = load i32, i32* %3, align 4
  %114 = call i64 @expbuf_write(%struct.expbuf_t* %4, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i64, i64* @errno, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0)
  %121 = call i32 (i8*, ...) @warnf(i8* %120)
  br label %124

122:                                              ; preds = %112
  %123 = call i32 @expbuf_dispose(%struct.expbuf_t* %4)
  br label %34

124:                                              ; preds = %116, %104, %102, %93, %84, %75, %66, %57, %48, %44
  br label %125

125:                                              ; preds = %124, %31, %22
  %126 = call i32 @expbuf_dispose(%struct.expbuf_t* %4)
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @close(i32 %127)
  %129 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %129)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @read_nbytes(i32, i8**, i32) #3

declare dso_local i32 @warnf(i8*, ...) #3

declare dso_local i64 @memcmp(i8*, i32, i32) #3

declare dso_local i64 @expbuf_read(%struct.expbuf_t*, i32) #3

declare dso_local i8* @expbuf_shift_str(%struct.expbuf_t*) #3

declare dso_local i64 @strcmp(i8*, i8*) #3

declare dso_local i64 @priv_enc_stub(%struct.expbuf_t*) #3

declare dso_local i64 @priv_dec_stub(%struct.expbuf_t*) #3

declare dso_local i64 @sign_stub(%struct.expbuf_t*) #3

declare dso_local i64 @load_key_stub(%struct.expbuf_t*) #3

declare dso_local i64 @del_rsa_key_stub(%struct.expbuf_t*) #3

declare dso_local i64 @setuidgid_stub(%struct.expbuf_t*) #3

declare dso_local i64 @expbuf_write(%struct.expbuf_t*, i32) #3

declare dso_local i32 @expbuf_dispose(%struct.expbuf_t*) #3

declare dso_local i32 @close(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
