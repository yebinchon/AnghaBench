; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_error.c_uv_translate_sys_error.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_error.c_uv_translate_sys_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EACCES = common dso_local global i32 0, align 4
@UV_EADDRINUSE = common dso_local global i32 0, align 4
@UV_EADDRNOTAVAIL = common dso_local global i32 0, align 4
@UV_EAFNOSUPPORT = common dso_local global i32 0, align 4
@UV_EAGAIN = common dso_local global i32 0, align 4
@UV_EALREADY = common dso_local global i32 0, align 4
@UV_EBADF = common dso_local global i32 0, align 4
@UV_EBUSY = common dso_local global i32 0, align 4
@UV_ECANCELED = common dso_local global i32 0, align 4
@UV_ECHARSET = common dso_local global i32 0, align 4
@UV_ECONNABORTED = common dso_local global i32 0, align 4
@UV_ECONNREFUSED = common dso_local global i32 0, align 4
@UV_ECONNRESET = common dso_local global i32 0, align 4
@UV_EEXIST = common dso_local global i32 0, align 4
@UV_EFAULT = common dso_local global i32 0, align 4
@UV_EHOSTUNREACH = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_EIO = common dso_local global i32 0, align 4
@UV_EISCONN = common dso_local global i32 0, align 4
@UV_ELOOP = common dso_local global i32 0, align 4
@UV_EMFILE = common dso_local global i32 0, align 4
@UV_EMSGSIZE = common dso_local global i32 0, align 4
@UV_ENAMETOOLONG = common dso_local global i32 0, align 4
@UV_ENETUNREACH = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i32 0, align 4
@UV_ENOENT = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@UV_ENOSPC = common dso_local global i32 0, align 4
@UV_ENOTCONN = common dso_local global i32 0, align 4
@UV_ENOTEMPTY = common dso_local global i32 0, align 4
@UV_ENOTSOCK = common dso_local global i32 0, align 4
@UV_ENOTSUP = common dso_local global i32 0, align 4
@UV_EOF = common dso_local global i32 0, align 4
@UV_EPERM = common dso_local global i32 0, align 4
@UV_EPIPE = common dso_local global i32 0, align 4
@UV_EPROTONOSUPPORT = common dso_local global i32 0, align 4
@UV_EROFS = common dso_local global i32 0, align 4
@UV_ETIMEDOUT = common dso_local global i32 0, align 4
@UV_EXDEV = common dso_local global i32 0, align 4
@UV_EISDIR = common dso_local global i32 0, align 4
@UV_E2BIG = common dso_local global i32 0, align 4
@UV_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_translate_sys_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %2, align 4
  br label %208

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %206 [
    i32 177, label %10
    i32 154, label %12
    i32 204, label %14
    i32 224, label %16
    i32 153, label %18
    i32 152, label %20
    i32 151, label %22
    i32 130, label %24
    i32 150, label %26
    i32 189, label %28
    i32 187, label %30
    i32 182, label %32
    i32 164, label %34
    i32 159, label %36
    i32 167, label %38
    i32 144, label %40
    i32 169, label %42
    i32 214, label %44
    i32 149, label %46
    i32 213, label %48
    i32 148, label %50
    i32 179, label %52
    i32 147, label %54
    i32 223, label %56
    i32 198, label %58
    i32 218, label %60
    i32 146, label %62
    i32 194, label %64
    i32 145, label %66
    i32 193, label %68
    i32 191, label %70
    i32 185, label %72
    i32 157, label %74
    i32 143, label %76
    i32 135, label %78
    i32 132, label %80
    i32 220, label %82
    i32 217, label %84
    i32 212, label %86
    i32 211, label %88
    i32 210, label %90
    i32 207, label %92
    i32 201, label %94
    i32 200, label %96
    i32 196, label %98
    i32 192, label %100
    i32 183, label %102
    i32 171, label %104
    i32 170, label %106
    i32 168, label %108
    i32 160, label %110
    i32 158, label %112
    i32 142, label %114
    i32 215, label %116
    i32 156, label %118
    i32 141, label %120
    i32 140, label %122
    i32 199, label %124
    i32 178, label %126
    i32 139, label %128
    i32 138, label %130
    i32 222, label %132
    i32 209, label %134
    i32 202, label %136
    i32 197, label %138
    i32 186, label %140
    i32 190, label %142
    i32 184, label %144
    i32 180, label %146
    i32 165, label %148
    i32 129, label %150
    i32 128, label %152
    i32 175, label %154
    i32 166, label %156
    i32 216, label %158
    i32 206, label %160
    i32 205, label %162
    i32 203, label %164
    i32 195, label %166
    i32 176, label %168
    i32 137, label %170
    i32 208, label %172
    i32 136, label %174
    i32 173, label %176
    i32 219, label %178
    i32 225, label %180
    i32 162, label %182
    i32 221, label %184
    i32 172, label %186
    i32 163, label %188
    i32 133, label %190
    i32 134, label %192
    i32 155, label %194
    i32 161, label %196
    i32 131, label %198
    i32 174, label %200
    i32 188, label %202
    i32 181, label %204
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @UV_EACCES, align 4
  store i32 %11, i32* %2, align 4
  br label %208

12:                                               ; preds = %8
  %13 = load i32, i32* @UV_EACCES, align 4
  store i32 %13, i32* %2, align 4
  br label %208

14:                                               ; preds = %8
  %15 = load i32, i32* @UV_EACCES, align 4
  store i32 %15, i32* %2, align 4
  br label %208

16:                                               ; preds = %8
  %17 = load i32, i32* @UV_EADDRINUSE, align 4
  store i32 %17, i32* %2, align 4
  br label %208

18:                                               ; preds = %8
  %19 = load i32, i32* @UV_EADDRINUSE, align 4
  store i32 %19, i32* %2, align 4
  br label %208

20:                                               ; preds = %8
  %21 = load i32, i32* @UV_EADDRNOTAVAIL, align 4
  store i32 %21, i32* %2, align 4
  br label %208

22:                                               ; preds = %8
  %23 = load i32, i32* @UV_EAFNOSUPPORT, align 4
  store i32 %23, i32* %2, align 4
  br label %208

24:                                               ; preds = %8
  %25 = load i32, i32* @UV_EAGAIN, align 4
  store i32 %25, i32* %2, align 4
  br label %208

26:                                               ; preds = %8
  %27 = load i32, i32* @UV_EALREADY, align 4
  store i32 %27, i32* %2, align 4
  br label %208

28:                                               ; preds = %8
  %29 = load i32, i32* @UV_EBADF, align 4
  store i32 %29, i32* %2, align 4
  br label %208

30:                                               ; preds = %8
  %31 = load i32, i32* @UV_EBADF, align 4
  store i32 %31, i32* %2, align 4
  br label %208

32:                                               ; preds = %8
  %33 = load i32, i32* @UV_EBUSY, align 4
  store i32 %33, i32* %2, align 4
  br label %208

34:                                               ; preds = %8
  %35 = load i32, i32* @UV_EBUSY, align 4
  store i32 %35, i32* %2, align 4
  br label %208

36:                                               ; preds = %8
  %37 = load i32, i32* @UV_EBUSY, align 4
  store i32 %37, i32* %2, align 4
  br label %208

38:                                               ; preds = %8
  %39 = load i32, i32* @UV_ECANCELED, align 4
  store i32 %39, i32* %2, align 4
  br label %208

40:                                               ; preds = %8
  %41 = load i32, i32* @UV_ECANCELED, align 4
  store i32 %41, i32* %2, align 4
  br label %208

42:                                               ; preds = %8
  %43 = load i32, i32* @UV_ECHARSET, align 4
  store i32 %43, i32* %2, align 4
  br label %208

44:                                               ; preds = %8
  %45 = load i32, i32* @UV_ECONNABORTED, align 4
  store i32 %45, i32* %2, align 4
  br label %208

46:                                               ; preds = %8
  %47 = load i32, i32* @UV_ECONNABORTED, align 4
  store i32 %47, i32* %2, align 4
  br label %208

48:                                               ; preds = %8
  %49 = load i32, i32* @UV_ECONNREFUSED, align 4
  store i32 %49, i32* %2, align 4
  br label %208

50:                                               ; preds = %8
  %51 = load i32, i32* @UV_ECONNREFUSED, align 4
  store i32 %51, i32* %2, align 4
  br label %208

52:                                               ; preds = %8
  %53 = load i32, i32* @UV_ECONNRESET, align 4
  store i32 %53, i32* %2, align 4
  br label %208

54:                                               ; preds = %8
  %55 = load i32, i32* @UV_ECONNRESET, align 4
  store i32 %55, i32* %2, align 4
  br label %208

56:                                               ; preds = %8
  %57 = load i32, i32* @UV_EEXIST, align 4
  store i32 %57, i32* %2, align 4
  br label %208

58:                                               ; preds = %8
  %59 = load i32, i32* @UV_EEXIST, align 4
  store i32 %59, i32* %2, align 4
  br label %208

60:                                               ; preds = %8
  %61 = load i32, i32* @UV_EFAULT, align 4
  store i32 %61, i32* %2, align 4
  br label %208

62:                                               ; preds = %8
  %63 = load i32, i32* @UV_EFAULT, align 4
  store i32 %63, i32* %2, align 4
  br label %208

64:                                               ; preds = %8
  %65 = load i32, i32* @UV_EHOSTUNREACH, align 4
  store i32 %65, i32* %2, align 4
  br label %208

66:                                               ; preds = %8
  %67 = load i32, i32* @UV_EHOSTUNREACH, align 4
  store i32 %67, i32* %2, align 4
  br label %208

68:                                               ; preds = %8
  %69 = load i32, i32* @UV_EINVAL, align 4
  store i32 %69, i32* %2, align 4
  br label %208

70:                                               ; preds = %8
  %71 = load i32, i32* @UV_EINVAL, align 4
  store i32 %71, i32* %2, align 4
  br label %208

72:                                               ; preds = %8
  %73 = load i32, i32* @UV_EINVAL, align 4
  store i32 %73, i32* %2, align 4
  br label %208

74:                                               ; preds = %8
  %75 = load i32, i32* @UV_EINVAL, align 4
  store i32 %75, i32* %2, align 4
  br label %208

76:                                               ; preds = %8
  %77 = load i32, i32* @UV_EINVAL, align 4
  store i32 %77, i32* %2, align 4
  br label %208

78:                                               ; preds = %8
  %79 = load i32, i32* @UV_EINVAL, align 4
  store i32 %79, i32* %2, align 4
  br label %208

80:                                               ; preds = %8
  %81 = load i32, i32* @UV_EINVAL, align 4
  store i32 %81, i32* %2, align 4
  br label %208

82:                                               ; preds = %8
  %83 = load i32, i32* @UV_EIO, align 4
  store i32 %83, i32* %2, align 4
  br label %208

84:                                               ; preds = %8
  %85 = load i32, i32* @UV_EIO, align 4
  store i32 %85, i32* %2, align 4
  br label %208

86:                                               ; preds = %8
  %87 = load i32, i32* @UV_EIO, align 4
  store i32 %87, i32* %2, align 4
  br label %208

88:                                               ; preds = %8
  %89 = load i32, i32* @UV_EIO, align 4
  store i32 %89, i32* %2, align 4
  br label %208

90:                                               ; preds = %8
  %91 = load i32, i32* @UV_EIO, align 4
  store i32 %91, i32* %2, align 4
  br label %208

92:                                               ; preds = %8
  %93 = load i32, i32* @UV_EIO, align 4
  store i32 %93, i32* %2, align 4
  br label %208

94:                                               ; preds = %8
  %95 = load i32, i32* @UV_EIO, align 4
  store i32 %95, i32* %2, align 4
  br label %208

96:                                               ; preds = %8
  %97 = load i32, i32* @UV_EIO, align 4
  store i32 %97, i32* %2, align 4
  br label %208

98:                                               ; preds = %8
  %99 = load i32, i32* @UV_EIO, align 4
  store i32 %99, i32* %2, align 4
  br label %208

100:                                              ; preds = %8
  %101 = load i32, i32* @UV_EIO, align 4
  store i32 %101, i32* %2, align 4
  br label %208

102:                                              ; preds = %8
  %103 = load i32, i32* @UV_EIO, align 4
  store i32 %103, i32* %2, align 4
  br label %208

104:                                              ; preds = %8
  %105 = load i32, i32* @UV_EIO, align 4
  store i32 %105, i32* %2, align 4
  br label %208

106:                                              ; preds = %8
  %107 = load i32, i32* @UV_EIO, align 4
  store i32 %107, i32* %2, align 4
  br label %208

108:                                              ; preds = %8
  %109 = load i32, i32* @UV_EIO, align 4
  store i32 %109, i32* %2, align 4
  br label %208

110:                                              ; preds = %8
  %111 = load i32, i32* @UV_EIO, align 4
  store i32 %111, i32* %2, align 4
  br label %208

112:                                              ; preds = %8
  %113 = load i32, i32* @UV_EIO, align 4
  store i32 %113, i32* %2, align 4
  br label %208

114:                                              ; preds = %8
  %115 = load i32, i32* @UV_EISCONN, align 4
  store i32 %115, i32* %2, align 4
  br label %208

116:                                              ; preds = %8
  %117 = load i32, i32* @UV_ELOOP, align 4
  store i32 %117, i32* %2, align 4
  br label %208

118:                                              ; preds = %8
  %119 = load i32, i32* @UV_EMFILE, align 4
  store i32 %119, i32* %2, align 4
  br label %208

120:                                              ; preds = %8
  %121 = load i32, i32* @UV_EMFILE, align 4
  store i32 %121, i32* %2, align 4
  br label %208

122:                                              ; preds = %8
  %123 = load i32, i32* @UV_EMSGSIZE, align 4
  store i32 %123, i32* %2, align 4
  br label %208

124:                                              ; preds = %8
  %125 = load i32, i32* @UV_ENAMETOOLONG, align 4
  store i32 %125, i32* %2, align 4
  br label %208

126:                                              ; preds = %8
  %127 = load i32, i32* @UV_ENETUNREACH, align 4
  store i32 %127, i32* %2, align 4
  br label %208

128:                                              ; preds = %8
  %129 = load i32, i32* @UV_ENETUNREACH, align 4
  store i32 %129, i32* %2, align 4
  br label %208

130:                                              ; preds = %8
  %131 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %131, i32* %2, align 4
  br label %208

132:                                              ; preds = %8
  %133 = load i32, i32* @UV_ENOENT, align 4
  store i32 %133, i32* %2, align 4
  br label %208

134:                                              ; preds = %8
  %135 = load i32, i32* @UV_ENOENT, align 4
  store i32 %135, i32* %2, align 4
  br label %208

136:                                              ; preds = %8
  %137 = load i32, i32* @UV_ENOENT, align 4
  store i32 %137, i32* %2, align 4
  br label %208

138:                                              ; preds = %8
  %139 = load i32, i32* @UV_ENOENT, align 4
  store i32 %139, i32* %2, align 4
  br label %208

140:                                              ; preds = %8
  %141 = load i32, i32* @UV_ENOENT, align 4
  store i32 %141, i32* %2, align 4
  br label %208

142:                                              ; preds = %8
  %143 = load i32, i32* @UV_ENOENT, align 4
  store i32 %143, i32* %2, align 4
  br label %208

144:                                              ; preds = %8
  %145 = load i32, i32* @UV_ENOENT, align 4
  store i32 %145, i32* %2, align 4
  br label %208

146:                                              ; preds = %8
  %147 = load i32, i32* @UV_ENOENT, align 4
  store i32 %147, i32* %2, align 4
  br label %208

148:                                              ; preds = %8
  %149 = load i32, i32* @UV_ENOENT, align 4
  store i32 %149, i32* %2, align 4
  br label %208

150:                                              ; preds = %8
  %151 = load i32, i32* @UV_ENOENT, align 4
  store i32 %151, i32* %2, align 4
  br label %208

152:                                              ; preds = %8
  %153 = load i32, i32* @UV_ENOENT, align 4
  store i32 %153, i32* %2, align 4
  br label %208

154:                                              ; preds = %8
  %155 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %155, i32* %2, align 4
  br label %208

156:                                              ; preds = %8
  %157 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %157, i32* %2, align 4
  br label %208

158:                                              ; preds = %8
  %159 = load i32, i32* @UV_ENOSPC, align 4
  store i32 %159, i32* %2, align 4
  br label %208

160:                                              ; preds = %8
  %161 = load i32, i32* @UV_ENOSPC, align 4
  store i32 %161, i32* %2, align 4
  br label %208

162:                                              ; preds = %8
  %163 = load i32, i32* @UV_ENOSPC, align 4
  store i32 %163, i32* %2, align 4
  br label %208

164:                                              ; preds = %8
  %165 = load i32, i32* @UV_ENOSPC, align 4
  store i32 %165, i32* %2, align 4
  br label %208

166:                                              ; preds = %8
  %167 = load i32, i32* @UV_ENOSPC, align 4
  store i32 %167, i32* %2, align 4
  br label %208

168:                                              ; preds = %8
  %169 = load i32, i32* @UV_ENOTCONN, align 4
  store i32 %169, i32* %2, align 4
  br label %208

170:                                              ; preds = %8
  %171 = load i32, i32* @UV_ENOTCONN, align 4
  store i32 %171, i32* %2, align 4
  br label %208

172:                                              ; preds = %8
  %173 = load i32, i32* @UV_ENOTEMPTY, align 4
  store i32 %173, i32* %2, align 4
  br label %208

174:                                              ; preds = %8
  %175 = load i32, i32* @UV_ENOTSOCK, align 4
  store i32 %175, i32* %2, align 4
  br label %208

176:                                              ; preds = %8
  %177 = load i32, i32* @UV_ENOTSUP, align 4
  store i32 %177, i32* %2, align 4
  br label %208

178:                                              ; preds = %8
  %179 = load i32, i32* @UV_EOF, align 4
  store i32 %179, i32* %2, align 4
  br label %208

180:                                              ; preds = %8
  %181 = load i32, i32* @UV_EPERM, align 4
  store i32 %181, i32* %2, align 4
  br label %208

182:                                              ; preds = %8
  %183 = load i32, i32* @UV_EPERM, align 4
  store i32 %183, i32* %2, align 4
  br label %208

184:                                              ; preds = %8
  %185 = load i32, i32* @UV_EPIPE, align 4
  store i32 %185, i32* %2, align 4
  br label %208

186:                                              ; preds = %8
  %187 = load i32, i32* @UV_EPIPE, align 4
  store i32 %187, i32* %2, align 4
  br label %208

188:                                              ; preds = %8
  %189 = load i32, i32* @UV_EPIPE, align 4
  store i32 %189, i32* %2, align 4
  br label %208

190:                                              ; preds = %8
  %191 = load i32, i32* @UV_EPIPE, align 4
  store i32 %191, i32* %2, align 4
  br label %208

192:                                              ; preds = %8
  %193 = load i32, i32* @UV_EPROTONOSUPPORT, align 4
  store i32 %193, i32* %2, align 4
  br label %208

194:                                              ; preds = %8
  %195 = load i32, i32* @UV_EROFS, align 4
  store i32 %195, i32* %2, align 4
  br label %208

196:                                              ; preds = %8
  %197 = load i32, i32* @UV_ETIMEDOUT, align 4
  store i32 %197, i32* %2, align 4
  br label %208

198:                                              ; preds = %8
  %199 = load i32, i32* @UV_ETIMEDOUT, align 4
  store i32 %199, i32* %2, align 4
  br label %208

200:                                              ; preds = %8
  %201 = load i32, i32* @UV_EXDEV, align 4
  store i32 %201, i32* %2, align 4
  br label %208

202:                                              ; preds = %8
  %203 = load i32, i32* @UV_EISDIR, align 4
  store i32 %203, i32* %2, align 4
  br label %208

204:                                              ; preds = %8
  %205 = load i32, i32* @UV_E2BIG, align 4
  store i32 %205, i32* %2, align 4
  br label %208

206:                                              ; preds = %8
  %207 = load i32, i32* @UV_UNKNOWN, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %206, %204, %202, %200, %198, %196, %194, %192, %190, %188, %186, %184, %182, %180, %178, %176, %174, %172, %170, %168, %166, %164, %162, %160, %158, %156, %154, %152, %150, %148, %146, %144, %142, %140, %138, %136, %134, %132, %130, %128, %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %6
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
