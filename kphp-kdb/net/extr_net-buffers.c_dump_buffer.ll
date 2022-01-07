; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_dump_buffer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_dump_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i8*, i8*, i32 }

@NB_MAGIC_HEAD = common dso_local global i64 0, align 8
@NB_MAGIC_BUSYHEAD = common dso_local global i64 0, align 8
@NB_MAGIC_BUSY = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"Dumping buffer #%d in chain at offset %d, addr=%p, size=%ld, start=%p, read=%p, pptr=%p, write=%p, end=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c%02x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%c  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_buffer(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NB_MAGIC_HEAD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NB_MAGIC_BUSYHEAD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NB_MAGIC_BUSY, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %22, %16, %3
  %29 = phi i1 [ true, %16 ], [ true, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %38 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, %struct.TYPE_3__* %35, i64 %44, i8* %47, i8* %50, i32 %53, i8* %56, i8* %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %7, align 8
  br label %64

64:                                               ; preds = %211, %28
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ult i8* %65, %68
  br i1 %69, label %70, label %216

70:                                               ; preds = %64
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 16
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  store i32 16, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %70
  %83 = load i32, i32* @stderr, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %84 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %148, %82
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 16
  br i1 %98, label %99, label %151

99:                                               ; preds = %96
  store i32 32, i32* %10, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = icmp eq i8* %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  store i32 91, i32* %10, align 4
  br label %109

109:                                              ; preds = %108, %99
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %113, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %109
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 91
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 124, i32 93
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %118, %109
  %124 = load i32, i32* %8, align 4
  %125 = icmp eq i32 %124, 8
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @stderr, align 4
  %128 = call i32 @fputc(i8 signext 32, i32 %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load i32, i32* @stderr, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %141)
  br label %147

143:                                              ; preds = %129
  %144 = load i32, i32* @stderr, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %143, %133
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %96

151:                                              ; preds = %96
  store i32 32, i32* %10, align 4
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 16
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = icmp eq i8* %153, %156
  br i1 %157, label %158, label %179

158:                                              ; preds = %151
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 16
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = icmp eq i8* %160, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  store i32 91, i32* %10, align 4
  br label %166

166:                                              ; preds = %165, %158
  %167 = load i8*, i8** %7, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 16
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 4
  %171 = load i8*, i8** %170, align 8
  %172 = icmp eq i8* %168, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %166
  %174 = load i32, i32* %10, align 4
  %175 = icmp eq i32 %174, 91
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 124, i32 93
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %173, %166
  br label %179

179:                                              ; preds = %178, %151
  %180 = load i32, i32* @stderr, align 4
  %181 = load i32, i32* %10, align 4
  %182 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  store i32 0, i32* %8, align 4
  br label %183

183:                                              ; preds = %208, %179
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %211

187:                                              ; preds = %183
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp slt i32 %193, 32
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %203

196:                                              ; preds = %187
  %197 = load i8*, i8** %7, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  br label %203

203:                                              ; preds = %196, %195
  %204 = phi i32 [ 46, %195 ], [ %202, %196 ]
  %205 = trunc i32 %204 to i8
  %206 = load i32, i32* @stderr, align 4
  %207 = call i32 @putc(i8 signext %205, i32 %206)
  br label %208

208:                                              ; preds = %203
  %209 = load i32, i32* %8, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %8, align 4
  br label %183

211:                                              ; preds = %183
  %212 = load i32, i32* @stderr, align 4
  %213 = call i32 @putc(i8 signext 10, i32 %212)
  %214 = load i8*, i8** %7, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 16
  store i8* %215, i8** %7, align 8
  br label %64

216:                                              ; preds = %64
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = ptrtoint i8* %219 to i64
  %224 = ptrtoint i8* %222 to i64
  %225 = sub i64 %223, %224
  %226 = trunc i64 %225 to i32
  ret i32 %226
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
