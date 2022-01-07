; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_fs.c_uv__fs_sendfile_emul.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_fs.c_uv__fs_sendfile_emul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.pollfd = type { i32, i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@ESPIPE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @uv__fs_sendfile_emul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uv__fs_sendfile_emul(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.pollfd, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8192 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  store i32 1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %163, %87, %1
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %170

34:                                               ; preds = %30
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ugt i64 %38, 8192
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i64 8192, i64* %9, align 8
  br label %41

41:                                               ; preds = %40, %34
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = getelementptr inbounds [8192 x i8], [8192 x i8]* %14, i64 0, i64 0
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @pread(i32 %46, i8* %47, i64 %48, i64 %49)
  store i64 %50, i64* %7, align 8
  br label %56

51:                                               ; preds = %42
  %52 = load i32, i32* %12, align 4
  %53 = getelementptr inbounds [8192 x i8], [8192 x i8]* %14, i64 0, i64 0
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @read(i32 %52, i8* %53, i64 %54)
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %51, %45
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %7, align 8
  %59 = icmp eq i64 %58, -1
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @EINTR, align 8
  %63 = icmp eq i64 %61, %62
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br i1 %65, label %42, label %66

66:                                               ; preds = %64
  %67 = load i64, i64* %7, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %171

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8
  %72 = icmp eq i64 %71, -1
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i64, i64* %6, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @EIO, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* @errno, align 8
  %85 = load i64, i64* @ESPIPE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %79
  store i32 0, i32* %4, align 4
  br label %30

88:                                               ; preds = %83, %76, %73
  %89 = load i64, i64* %6, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i64 -1, i64* %6, align 8
  br label %92

92:                                               ; preds = %91, %88
  br label %171

93:                                               ; preds = %70
  store i64 0, i64* %8, align 8
  br label %94

94:                                               ; preds = %162, %120, %93
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %163

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %115, %98
  %100 = load i32, i32* %13, align 4
  %101 = getelementptr inbounds [8192 x i8], [8192 x i8]* %14, i64 0, i64 0
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = sub i64 %104, %105
  %107 = call i64 @write(i32 %100, i8* %103, i64 %106)
  store i64 %107, i64* %11, align 8
  br label %108

108:                                              ; preds = %99
  %109 = load i64, i64* %11, align 8
  %110 = icmp eq i64 %109, -1
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i64, i64* @errno, align 8
  %113 = load i64, i64* @EINTR, align 8
  %114 = icmp eq i64 %112, %113
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi i1 [ false, %108 ], [ %114, %111 ]
  br i1 %116, label %99, label %117

117:                                              ; preds = %115
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, -1
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %8, align 8
  br label %94

124:                                              ; preds = %117
  %125 = load i64, i64* @errno, align 8
  %126 = load i64, i64* @EAGAIN, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load i64, i64* @errno, align 8
  %130 = load i64, i64* @EWOULDBLOCK, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i64 -1, i64* %6, align 8
  br label %171

133:                                              ; preds = %128, %124
  %134 = load i32, i32* %13, align 4
  %135 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 0
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @POLLOUT, align 4
  %137 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 1
  store i32 %136, i32* %137, align 4
  %138 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 2
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %148, %133
  %140 = call i64 @poll(%struct.pollfd* %3, i32 1, i32 -1)
  store i64 %140, i64* %11, align 8
  br label %141

141:                                              ; preds = %139
  %142 = load i64, i64* %11, align 8
  %143 = icmp eq i64 %142, -1
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i64, i64* @errno, align 8
  %146 = load i64, i64* @EINTR, align 8
  %147 = icmp eq i64 %145, %146
  br label %148

148:                                              ; preds = %144, %141
  %149 = phi i1 [ false, %141 ], [ %147, %144 ]
  br i1 %149, label %139, label %150

150:                                              ; preds = %148
  %151 = load i64, i64* %11, align 8
  %152 = icmp eq i64 %151, -1
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @POLLOUT, align 4
  %157 = xor i32 %156, -1
  %158 = and i32 %155, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153, %150
  %161 = load i64, i64* @EIO, align 8
  store i64 %161, i64* @errno, align 8
  store i64 -1, i64* %6, align 8
  br label %171

162:                                              ; preds = %153
  br label %94

163:                                              ; preds = %94
  %164 = load i64, i64* %7, align 8
  %165 = load i64, i64* %5, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %5, align 8
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* %6, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %6, align 8
  br label %30

170:                                              ; preds = %30
  br label %171

171:                                              ; preds = %170, %160, %132, %92, %69
  %172 = load i64, i64* %6, align 8
  %173 = icmp ne i64 %172, -1
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i64, i64* %5, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i64, i64* %6, align 8
  ret i64 %179
}

declare dso_local i64 @pread(i32, i8*, i64, i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
